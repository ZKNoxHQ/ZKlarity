/*
 * test_groth16.js — Test GROTH16_VERIFY (INS 0x40) on Ledger
 *
 * Sends a valid Groth16 proof + public inputs, expects 0x01 (valid).
 * Also sends a corrupted proof, expects 0x00 (invalid).
 *
 * Usage:  node test_groth16.js
 */

const TransportNodeHid = require("@ledgerhq/hw-transport-node-hid").default;

const CLA             = 0xE0;
const INS_GROTH16     = 0x40;
const P2_MORE         = 0x80;
const P2_LAST         = 0x00;
const CHUNK_SIZE      = 250;
const PROOF_TOTAL_LEN = 448;

function buildApdu(ins, p1, p2, data = Buffer.alloc(0)) {
    const header = Buffer.from([CLA, ins, p1, p2, data.length]);
    return Buffer.concat([header, data]);
}

function pad48(hex) {
    return hex.replace(/^0x/, "").padStart(96, "0");
}
function pad32(hex) {
    return hex.replace(/^0x/, "").padStart(64, "0");
}

/* ── Proof (action: repay) ─────────────────────────────────────────── */

// π.A ∈ G1 (96 B)
const PI_A_X = "19e6a3ee18c136bf1c76d5be00a1231d99bbe868f0429af182754a3dc3360c259799d0a5e04e5d492a54401cebf0370e";
const PI_A_Y = "1870467933726c6e92d3721d728fb99c7f45974fc708a6bc645892f4054d112f31696ee7738ef4b61db69d4aab048644";

// π.B ∈ G2 (192 B)
const PI_B_X0 = "0d4f1472d61b75b31db5d012d88920772ba0fb79045e91aeae9ff966da188301939a3bba28b2e0e23821a912c1ca3267";
const PI_B_X1 = "177171f44fc7d70240aff8302b6e39e40159a88269b90b4ca0ee62a69b0ef8a4f59537a4d5f42c3f0a4e3cd6e7b57b43";
const PI_B_Y0 = "0a99df870bda74d3fad44b6fd9912fb024305caeb6bb031aafa75e8f18a88bc5f7912e927aa01b19d343631c9fe82de2";
const PI_B_Y1 = "164659d0d4be142566e6e3c1419c874b47f96d588864fad905792f1a8238d1a64a718682a614ba8c0cbc0d4a5756a908";

// π.C ∈ G1 (96 B)
const PI_C_X = "0f8b0023d1186b0bdaf2705a493d26b532eb6bdce9dd19bdb21f5a9c2b568f1f9633fdbe71fb98dcb7fa93c916ee193c";
const PI_C_Y = "118cd0a2873368cee75b09edfa421841ce9e19086b1eaad5b59b8b937b0634cc221f4aee243fb96eaa54f56353f8b18f";

// Public inputs (32 B each)
const H_TX  = "00814c5a02342ba1ecdf0c0032df504ae1fe2caacf07485f278899915e094d72";
const H_STR = "4c038a0858b73d4ed6e4a36f3ba0ffc676cae3bf931872eef15c42ff26f42ad3";

/* ── Build 448-byte payload ────────────────────────────────────────── */

function buildProofPayload() {
    return Buffer.from(
        pad48(PI_A_X) + pad48(PI_A_Y) +
        pad48(PI_B_X0) + pad48(PI_B_X1) + pad48(PI_B_Y0) + pad48(PI_B_Y1) +
        pad48(PI_C_X) + pad48(PI_C_Y) +
        pad32(H_TX) + pad32(H_STR),
        "hex"
    );
}

/* ── Send chunked APDU ─────────────────────────────────────────────── */

async function sendChunked(transport, payload) {
    let offset = 0;
    let chunkIdx = 0;

    while (offset < payload.length) {
        const remaining = payload.length - offset;
        const isLast = remaining <= CHUNK_SIZE;
        const len = isLast ? remaining : CHUNK_SIZE;
        const chunk = payload.slice(offset, offset + len);

        const p2 = isLast ? P2_LAST : P2_MORE;
        const apdu = buildApdu(INS_GROTH16, chunkIdx, p2, chunk);

        const resp = await transport.exchange(apdu);
        const sw = resp.slice(-2).toString("hex");

        if (!isLast) {
            /* Intermediate chunk — expect ACK */
            if (sw !== "9000") {
                throw new Error(`Chunk ${chunkIdx} failed — SW: ${sw}`);
            }
        } else {
            /* Last chunk — response contains result */
            return resp;
        }

        offset += len;
        chunkIdx++;
    }
}

/* ── Main ──────────────────────────────────────────────────────────── */

async function run() {
    let transport;
    let pass = 0, fail = 0;

    function check(name, got, expected) {
        if (got === expected) {
            console.log(`  ✅ [PASS] ${name}  (result = 0x${got.toString(16).padStart(2,"0")})`);
            pass++;
        } else {
            console.log(`  ❌ [FAIL] ${name}  (expected 0x${expected.toString(16).padStart(2,"0")}, got 0x${got.toString(16).padStart(2,"0")})`);
            fail++;
        }
    }

    try {
        const devices = await TransportNodeHid.list();
        if (devices.length === 0) { console.log("No Ledger device found."); return; }
        transport = await TransportNodeHid.open(devices[0]);
        console.log("Connected to Ledger device\n");

        /* ── Test 1: valid proof ────────────────────────────────────── */
        console.log("══ Test 1: valid Groth16 proof (repay) ══\n");
        {
            const payload = buildProofPayload();
            console.log(`  payload: ${payload.length} bytes (${Math.ceil(payload.length / CHUNK_SIZE)} chunks)`);

            console.time("  Groth16 verify");
            const resp = await sendChunked(transport, payload);
            console.timeEnd("  Groth16 verify");

            const sw = resp.slice(-2).toString("hex");
            if (sw !== "9000") {
                console.log(`  ❌ SW error: ${sw}`);
                fail++;
            } else {
                check("valid proof accepted", resp[0], 0x01);
            }
        }

        /* ── Test 2: corrupted proof (flip bit in π.A) ──────────────── */
        console.log("\n══ Test 2: corrupted proof ══\n");
        {
            const payload = buildProofPayload();
            payload[0] ^= 0x01;   // corrupt π.A.x first byte

            console.time("  Groth16 verify (bad)");
            const resp = await sendChunked(transport, payload);
            console.timeEnd("  Groth16 verify (bad)");

            const sw = resp.slice(-2).toString("hex");
            if (sw !== "9000") {
                console.log(`  ❌ SW error: ${sw}`);
                fail++;
            } else {
                check("corrupted proof rejected", resp[0], 0x00);
            }
        }

        /* ── Test 3: wrong public input ─────────────────────────────── */
        console.log("\n══ Test 3: wrong H_tx ══\n");
        {
            const payload = buildProofPayload();
            // Corrupt H_tx (byte at offset 384)
            payload[384] ^= 0x01;

            console.time("  Groth16 verify (bad pub)");
            const resp = await sendChunked(transport, payload);
            console.timeEnd("  Groth16 verify (bad pub)");

            const sw = resp.slice(-2).toString("hex");
            if (sw !== "9000") {
                console.log(`  ❌ SW error: ${sw}`);
                fail++;
            } else {
                check("wrong public input rejected", resp[0], 0x00);
            }
        }

        /* ── Summary ─────────────────────────────────────────────────── */
        console.log(`\n══ Results: ${pass} passed, ${fail} failed ══`);

    } catch (err) {
        console.error("Error:", err.message);
    } finally {
        if (transport) {
            await transport.close();
            console.log("Connection closed");
        }
    }
}

run().catch(console.error);
