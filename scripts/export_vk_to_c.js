/**
 * export_vk_to_c.js
 *
 * Convertit keys/verification_key.json (produit par snarkjs)
 * en constantes C prêtes à être incluses dans zkn_clear_signing_vk.h
 * pour la vérification Groth16 sur le Nano.
 *
 * Usage : node export_vk_to_c.js
 * Sortie : zkn_clear_signing_vk.h
 *
 * Format snarkjs verification_key.json (BLS12-381, 2 signaux publics) :
 * {
 *   "protocol": "groth16",
 *   "curve": "bls12381",
 *   "nPublic": 2,
 *   "vk_alpha_1": ["x","y","1"],   ← G1 point (projective)
 *   "vk_beta_2":  [["x0","x1"],["y0","y1"],["1","0"]],  ← G2 point
 *   "vk_gamma_2": [...],
 *   "vk_delta_2": [...],
 *   "IC": [                        ← nPublic+1 = 3 points G1
 *     ["x","y","1"],               ← IC[0]
 *     ["x","y","1"],               ← IC[1] (H_tx)
 *     ["x","y","1"],               ← IC[2] (H_str)
 *   ]
 * }
 *
 * Sur BLS12-381 :
 *   G1 point : (x, y) sur Fp  → 2 × 48 bytes = 96 bytes
 *   G2 point : (x, y) sur Fp2 → 4 × 48 bytes = 192 bytes
 */

const fs   = require("fs");
const path = require("path");

const VK_PATH = "keys/verification_key.json";
const OUT_PATH = "zkn_clear_signing_vk.h";

// ── Utilitaires ────────────────────────────────────────────────────────

/**
 * Convertit un BigInt en tableau de N bytes big-endian (hex)
 */
function bigintToBytes(n, numBytes) {
    let hex = BigInt(n).toString(16).padStart(numBytes * 2, '0');
    if (hex.length > numBytes * 2) {
        throw new Error(`Valeur trop grande : ${hex.length} hex digits pour ${numBytes} bytes`);
    }
    return hex.match(/.{2}/g).map(b => `0x${b}`);
}

/**
 * Formate un tableau de bytes en lignes C (16 bytes par ligne)
 */
function formatByteArray(bytes, indent = "    ") {
    const lines = [];
    for (let i = 0; i < bytes.length; i += 16) {
        lines.push(indent + bytes.slice(i, i + 16).join(", "));
    }
    return lines.join(",\n");
}

/**
 * Convertit un point G1 snarkjs (projective [x, y, "1"]) en affine bytes
 * BLS12-381 G1 : x, y ∈ Fp (48 bytes chacun) → 96 bytes total
 */
function g1ToBytes(point) {
    const x = bigintToBytes(point[0], 48);
    const y = bigintToBytes(point[1], 48);
    return [...x, ...y];
}

/**
 * Convertit un point G2 snarkjs en affine bytes
 * BLS12-381 G2 : x = (x0, x1), y = (y0, y1) ∈ Fp2 → 4 × 48 = 192 bytes
 * Ordre snarkjs : [[x0, x1], [y0, y1], ["1", "0"]]
 */
function g2ToBytes(point) {
    // point[0] = [x0, x1], point[1] = [y0, y1]
    const x0 = bigintToBytes(point[0][0], 48);
    const x1 = bigintToBytes(point[0][1], 48);
    const y0 = bigintToBytes(point[1][0], 48);
    const y1 = bigintToBytes(point[1][1], 48);
    return [...x0, ...x1, ...y0, ...y1];
}

/**
 * Génère le bloc C pour un point G1
 */
function g1Block(name, point, comment) {
    const bytes = g1ToBytes(point);
    return `/* ${comment} (G1, 96 bytes = 2×48) */
static const uint8_t ${name}[96] = {
${formatByteArray(bytes)}
};`;
}

/**
 * Génère le bloc C pour un point G2
 */
function g2Block(name, point, comment) {
    const bytes = g2ToBytes(point);
    return `/* ${comment} (G2, 192 bytes = 4×48) */
static const uint8_t ${name}[192] = {
${formatByteArray(bytes)}
};`;
}

// ── Main ───────────────────────────────────────────────────────────────
function main() {
    if (!fs.existsSync(VK_PATH)) {
        console.error(`[ERR] ${VK_PATH} introuvable. Lancer build.sh setup d'abord.`);
        process.exit(1);
    }

    const vk = JSON.parse(fs.readFileSync(VK_PATH, "utf8"));

    if (vk.protocol !== "groth16") {
        console.error("[ERR] Protocole inattendu :", vk.protocol);
        process.exit(1);
    }
    if (vk.curve !== "bls12381") {
        console.error("[ERR] Courbe inattendue :", vk.curve, "(attendu bls12381)");
        process.exit(1);
    }
    if (vk.nPublic !== 2) {
        console.error("[ERR] nPublic inattendu :", vk.nPublic, "(attendu 2 : H_tx, H_str)");
        process.exit(1);
    }

    console.log(`[OK] verification_key.json lu (curve=${vk.curve}, nPublic=${vk.nPublic})`);

    const lines = [];

    lines.push(`/**`);
    lines.push(` * zkn_clear_signing_vk.h`);
    lines.push(` *`);
    lines.push(` * Clé de vérification Groth16 (BLS12-381) pour ClearSigningProof.`);
    lines.push(` * Généré automatiquement par export_vk_to_c.js`);
    lines.push(` * Source : ${VK_PATH}`);
    lines.push(` *`);
    lines.push(` * Circuit  : clear_signing_proof.circom`);
    lines.push(` * Courbe   : BLS12-381`);
    lines.push(` * Protocole: Groth16`);
    lines.push(` * Signaux publics (${vk.nPublic}) : H_tx, H_str`);
    lines.push(` *`);
    lines.push(` * Équation de vérification :`);
    lines.push(` *   e(A, B) == e(vk_alpha1, vk_beta2)`);
    lines.push(` *            * e(IC[0] + H_tx*IC[1] + H_str*IC[2], vk_gamma2)`);
    lines.push(` *            * e(C, vk_delta2)`);
    lines.push(` */`);
    lines.push(``);
    lines.push(`#pragma once`);
    lines.push(`#include <stdint.h>`);
    lines.push(``);
    lines.push(`/* ── Constantes de la courbe BLS12-381 ── */`);
    lines.push(`#define GROTH16_G1_BYTES   96   /* point G1 affine : (x,y) sur Fp, 2×48 bytes */`);
    lines.push(`#define GROTH16_G2_BYTES   192  /* point G2 affine : (x,y) sur Fp2, 4×48 bytes */`);
    lines.push(`#define GROTH16_N_PUBLIC   2    /* H_tx, H_str */`);
    lines.push(`#define GROTH16_N_IC       3    /* IC[0] + N_PUBLIC points */`);
    lines.push(``);

    // vk_alpha1
    lines.push(g1Block("ZKN_VK_ALPHA1", vk.vk_alpha_1,
        "vk_alpha1 : élément fixe du setup"));
    lines.push(``);

    // vk_beta2
    lines.push(g2Block("ZKN_VK_BETA2", vk.vk_beta_2,
        "vk_beta2 : élément fixe du setup"));
    lines.push(``);

    // vk_gamma2
    lines.push(g2Block("ZKN_VK_GAMMA2", vk.vk_gamma_2,
        "vk_gamma2 : encode les contraintes publiques"));
    lines.push(``);

    // vk_delta2
    lines.push(g2Block("ZKN_VK_DELTA2", vk.vk_delta_2,
        "vk_delta2 : encode les contraintes privées"));
    lines.push(``);

    // IC points (3 = IC[0] + IC[1] pour H_tx + IC[2] pour H_str)
    for (let i = 0; i < vk.IC.length; i++) {
        const label = i === 0 ? "constante"
                    : i === 1 ? "coefficient H_tx"
                    :           "coefficient H_str";
        lines.push(g1Block(`ZKN_VK_IC${i}`, vk.IC[i],
            `IC[${i}] : ${label}`));
        lines.push(``);
    }

    // Tableau des IC pour boucler facilement
    lines.push(`/* Tableau de pointeurs vers les points IC */`);
    lines.push(`static const uint8_t * const ZKN_VK_IC[GROTH16_N_IC] = {`);
    for (let i = 0; i < vk.IC.length; i++) {
        lines.push(`    ZKN_VK_IC${i},`);
    }
    lines.push(`};`);
    lines.push(``);

    // vk_alphabeta_12 (precomputed pour optimiser la vérification)
    if (vk.vk_alphabeta_12) {
        lines.push(`/* vk_alphabeta_12 = e(alpha1, beta2) précompté */`);
        lines.push(`/* Utiliser pour remplacer un pairing dans la vérification */`);
        lines.push(`/* Format : 12 éléments Fp, chacun 48 bytes → 576 bytes total */`);
        lines.push(`/* TODO : décomposer si l'implémentation du Nano le supporte */`);
    }

    lines.push(`/* ── Fin de zkn_clear_signing_vk.h ── */`);

    const output = lines.join("\n");
    fs.writeFileSync(OUT_PATH, output);

    console.log(`[OK] ${OUT_PATH} généré`);
    console.log(`     ${vk.IC.length} IC points (G1 × 96 bytes chacun)`);
    console.log(`     1 alpha1 (G1), 3 G2 points (beta2, gamma2, delta2)`);
    console.log(`     Taille totale ROM : ${96 * (1 + vk.IC.length) + 192 * 3} bytes`);
}

main();
