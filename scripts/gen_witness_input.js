/**
 * gen_witness_input.js
 *
 * Génère witness_input.json prêt pour snarkjs / circom witness generation.
 * Produit exactement les signaux attendus par ClearSigningProof.
 *
 * Usage :
 *   node gen_witness_input.js supply   → witness_supply.json
 *   node gen_witness_input.js borrow   → witness_borrow.json
 *   node gen_witness_input.js repay    → witness_repay.json
 *   node gen_witness_input.js withdraw → witness_withdraw.json
 *   node gen_witness_input.js all      → tous les fichiers
 */

const fs = require("fs");

// ── Constantes (DOIVENT correspondre aux paramètres template du circuit) ──
const MAX_CALLDATA   = 164;
const MAX_INT_DIGITS = 10;
const MAX_DECIMALS   = 18;
const STRING_LEN     = 64;
const SYMBOL_LEN     = 6;

// ── Token registry ─────────────────────────────────────────────────────
const TOKENS = [
    { addr: 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48n, symbol: [85,83,68,67,0,0],    decimals: 6  },
    { addr: 0xdAC17F958D2ee523a2206206994597C13D831ec7n, symbol: [85,83,68,84,0,0],    decimals: 6  },
    { addr: 0x6B175474E89094C44Da98b954EedeAC495271d0Fn, symbol: [68,65,73,0,0,0],     decimals: 18 },
    { addr: 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2n, symbol: [87,69,84,72,0,0],   decimals: 18 },
    { addr: 0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599n, symbol: [87,66,84,67,0,0],   decimals: 8  },
    { addr: 0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0n, symbol: [119,115,116,69,84,72], decimals: 18 },
    { addr: 0x514910771AF9Ca656af840dff83E8264EcF986CAn, symbol: [76,73,78,75,0,0],   decimals: 18 },
    { addr: 0x7Fc66500c84A76Ad7e9c93437bFc5Ac33E2DDaE9n, symbol: [65,65,86,69,0,0],   decimals: 18 },
];

// ── Prefixes ASCII ─────────────────────────────────────────────────────
const PREFIXES = {
    supply:   [83,117,112,112,108,121,32],      // "Supply "   7 bytes
    borrow:   [66,111,114,114,111,119,32],      // "Borrow "   7 bytes
    repay:    [82,101,112,97,121,32],            // "Repay "    6 bytes
    withdraw: [87,105,116,104,100,114,97,119,32], // "Withdraw " 9 bytes
};

const SUFFIX_VARIABLE = [32,40,118,97,114,105,97,98,108,101,41]; // " (variable)"
const SUFFIX_STABLE   = [32,40,115,116,97,98,108,101,41];        // " (stable)"

const ACTION_TYPES = { supply: 0, borrow: 1, repay: 2, withdraw: 3 };

const poseidonBls = require("poseidon-bls12381");

// ── Poseidon BLS12-381 sur bytes (31 bytes par bloc, identique au circuit) ──
// Utilise poseidon-bls12381 qui produit exactement les mêmes valeurs que
// le template Poseidon255 du circuit (mêmes constantes BLS12-381).
async function poseidonBytes(bytes, n) {
    const N_BLOCKS = Math.ceil(n / 31);
    const padded = new Uint8Array(N_BLOCKS * 31);
    for (let i = 0; i < Math.min(bytes.length, n); i++) padded[i] = Number(bytes[i]);

    const fields = [];
    for (let b = 0; b < N_BLOCKS; b++) {
        let acc = 0n;
        for (let i = 0; i < 31; i++) acc = acc * 256n + BigInt(padded[b * 31 + i]);
        fields.push(acc);
    }

    // Sélectionne poseidonN selon le nombre de blocs
    const fn = poseidonBls['poseidon' + N_BLOCKS];
    if (!fn) throw new Error("poseidon" + N_BLOCKS + " non disponible");
    return fn(fields);
}

// ── Décomposition du montant ───────────────────────────────────────────
function decomposeAmount(rawAmount, decimals) {
    const pow10    = 10n ** BigInt(decimals);
    const intPart  = rawAmount / pow10;
    const fracPart = rawAmount % pow10;

    // int_digits : padded à gauche avec des 0 jusqu'à MAX_INT_DIGITS
    const intStr  = intPart.toString().padStart(MAX_INT_DIGITS, '0');
    // frac_digits : padded à droite avec des 0 jusqu'à MAX_DECIMALS
    const fracStr = fracPart.toString().padStart(decimals, '0').padEnd(MAX_DECIMALS, '0');

    const intDigits  = intStr.split('').map(Number);
    const fracDigits = fracStr.split('').map(Number);

    // n_leading_zeros : nb de 0 de tête dans intDigits
    let nLZ = 0;
    while (nLZ < intDigits.length - 1 && intDigits[nLZ] === 0) nLZ++;

    return { intDigits, fracDigits, nLZ };
}

// ── Construction EXACTE de la string (miroir du circuit) ───────────────
// Le circuit produit une string de STRING_LEN bytes avec :
//   prefix + int_digits(MAX_INT_DIGITS bytes ASCII) + '.' + frac_digits(MAX_DECIMALS bytes ASCII) + ' ' + symbol(SYMBOL_LEN bytes) + [suffix] + padding 0x00
function buildCircuitString(action, intDigits, fracDigits, symbolBytes, rateMode) {
    const buf = new Uint8Array(STRING_LEN);
    let pos = 0;

    const prefix = PREFIXES[action];
    for (const b of prefix) buf[pos++] = b;

    // MAX_INT_DIGITS bytes ASCII (avec zéros de tête)
    for (const d of intDigits) buf[pos++] = d + 48;

    // '.'
    buf[pos++] = 46;

    // MAX_DECIMALS bytes ASCII (frac complet)
    for (const d of fracDigits) buf[pos++] = d + 48;

    // espace
    buf[pos++] = 32;

    // symbole (SYMBOL_LEN bytes, avec bytes nuls de padding)
    for (const b of symbolBytes) buf[pos++] = b;

    // suffix pour borrow/repay
    if (action === 'borrow' || action === 'repay') {
        const suffix = rateMode === 2n ? SUFFIX_VARIABLE : SUFFIX_STABLE;
        for (const b of suffix) {
            if (pos < STRING_LEN) buf[pos++] = b;
        }
    }
    // reste = 0x00 (déjà le cas avec new Uint8Array)

    return buf;
}

// ── Parseur calldata brut ─────────────────────────────────────────────
function parseCalldata(action, hexStr) {
    const hex = hexStr.replace(/^0x/, '');
    const bytes = new Uint8Array(hex.match(/.{2}/g).map(b => parseInt(b, 16)));
    const bigBytes = Array.from(bytes).map(BigInt);

    // Extrait un slot de 32 bytes à la position slotIdx (0-indexed après selector)
    const slot = i => bigBytes.slice(4 + i * 32, 4 + (i + 1) * 32);

    // Extrait adresse (20 derniers bytes du slot)
    const addr = i => {
        const s = slot(i);
        let v = 0n;
        for (let j = 12; j < 32; j++) v = v * 256n + s[j];
        return v;
    };

    // Extrait uint256 (32 bytes)
    const uint256 = i => {
        const s = slot(i);
        let v = 0n;
        for (let j = 0; j < 32; j++) v = v * 256n + s[j];
        return v;
    };

    switch (action) {
        case 'supply':
            return { asset: addr(0), amount: uint256(1), rateMode: 0n };
        case 'borrow':
            return { asset: addr(0), amount: uint256(1), rateMode: uint256(2) };
        case 'repay':
            return { asset: addr(0), amount: uint256(1), rateMode: uint256(2) };
        case 'withdraw':
            return { asset: addr(0), amount: uint256(1), rateMode: 0n };
    }
}

// ── Génération d'un witness complet ───────────────────────────────────
async function generateWitness(action, calldataHex) {
    const hex = calldataHex.replace(/^0x/, '');
    const rawBytes = new Uint8Array(hex.match(/.{2}/g).map(b => parseInt(b, 16)));

    // Pad calldata à MAX_CALLDATA
    const calldataPadded = new Uint8Array(MAX_CALLDATA);
    calldataPadded.set(rawBytes);

    // Parse
    const { asset, amount, rateMode } = parseCalldata(action, calldataHex);

    // Token lookup
    const tokenIdx = TOKENS.findIndex(t => t.addr === asset);
    if (tokenIdx === -1) throw new Error(`Token inconnu: 0x${asset.toString(16)}`);
    const token = TOKENS[tokenIdx];

    // Décomposition
    const { intDigits, fracDigits, nLZ } = decomposeAmount(amount, token.decimals);

    // String circuit (avec zéros de tête — c'est ce que le circuit produit)
    const circuitStr = buildCircuitString(action, intDigits, fracDigits, token.symbol, rateMode);

    // String display (pour vérification humaine, trim les zéros)
    const displayStr = Buffer.from(circuitStr).toString('ascii').replace(/\0+$/, '');

    // Poseidon hashes
    const H_tx  = await poseidonBytes(calldataPadded, MAX_CALLDATA);
    const H_str = await poseidonBytes(circuitStr, STRING_LEN);

    const witness = {
        // Signaux PUBLICS (entrées connues du vérificateur)
        H_tx:           H_tx.toString(),
        H_str:          H_str.toString(),

        // Signaux PRIVÉS
        calldata:       Array.from(calldataPadded).map(String),
        calldata_len:   rawBytes.length.toString(),
        action_type:    ACTION_TYPES[action].toString(),
        token_idx:      tokenIdx.toString(),
        int_digits:     intDigits.map(String),
        frac_digits:    fracDigits.map(String),
        n_leading_zeros: nLZ.toString(),
        rate_mode:      rateMode.toString(),
        human_string:   Array.from(circuitStr).map(String),
    };

    return { witness, displayStr, H_tx, H_str };
}

// ── Vecteurs de test ───────────────────────────────────────────────────
const TEST_VECTORS = {
    supply: {
        calldata:
            "0x617ba037" +
            "000000000000000000000000A0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48" +
            "000000000000000000000000000000000000000000000000000000003B9ACA00" + // 1000 USDC
            "000000000000000000000000742d35Cc6634C0532925a3b844Bc454e4438f44e" +
            "0000000000000000000000000000000000000000000000000000000000000000",
    },
    borrow: {
        calldata:
            "0xa415bcad" +
            "000000000000000000000000C02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2" +
            "00000000000000000000000000000000000000000000000006F05B59D3B20000" + // 0.5 WETH
            "0000000000000000000000000000000000000000000000000000000000000002" + // variable
            "0000000000000000000000000000000000000000000000000000000000000000" +
            "000000000000000000000000742d35Cc6634C0532925a3b844Bc454e4438f44e",
    },
    repay: {
        calldata:
            "0x573ade81" +
            "000000000000000000000000dAC17F958D2ee523a2206206994597C13D831ec7" +
            "000000000000000000000000000000000000000000000000000000001DCD6500" + // 500 USDT
            "0000000000000000000000000000000000000000000000000000000000000001" + // stable
            "000000000000000000000000742d35Cc6634C0532925a3b844Bc454e4438f44e",
    },
    withdraw: {
        calldata:
            "0x69328dec" +
            "0000000000000000000000002260FAC5E5542a773Aa44fBCfeDf7C193bc2C599" +
            "0000000000000000000000000000000000000000000000000000000005F5E100" + // 1 WBTC
            "000000000000000000000000742d35Cc6634C0532925a3b844Bc454e4438f44e",
    },
};

// ── Main ───────────────────────────────────────────────────────────────
async function main() {
    const arg = process.argv[2] || 'all';
    const actions = arg === 'all' ? Object.keys(TEST_VECTORS) : [arg];

    console.log("=== Witness Generator ===\n");

    for (const action of actions) {
        const tv = TEST_VECTORS[action];
        if (!tv) { console.error(`Action inconnue: ${action}`); continue; }

        try {
            const { witness, displayStr, H_tx, H_str } = await generateWitness(action, tv.calldata);

            const filename = `witness_${action}.json`;
            fs.writeFileSync(filename, JSON.stringify(witness, null, 2));

            console.log(`✓ ${action.toUpperCase()}`);
            console.log(`  Affichage circuit : "${displayStr}"`);
            console.log(`  H_tx  = ${H_tx.toString().slice(0,24)}...`);
            console.log(`  H_str = ${H_str.toString().slice(0,24)}...`);
            console.log(`  Witness → ${filename}  (${Object.keys(witness).length} signaux)\n`);

        } catch(e) {
            console.error(`✗ ${action}: ${e.message}`);
        }
    }

    console.log("Prochaine étape :");
    console.log("  node build/clear_signing_proof_js/generate_witness.js \\");
    console.log("       build/clear_signing_proof_js/clear_signing_proof.wasm \\");
    console.log("       witness_supply.json witness.wtns");
    console.log("");
    console.log("  snarkjs groth16 prove keys/circuit_final.zkey witness.wtns proof.json public.json");
    console.log("  snarkjs groth16 verify keys/verification_key.json public.json proof.json");
}

main().catch(console.error);
