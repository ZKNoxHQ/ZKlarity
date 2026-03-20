# ClearSigningProof — Aave v3 × Ledger Nano

Groth16 ZK circuit (BLS12-381) proving that a human-readable string is a faithful
representation of an Aave v3 calldata.

## Principle

The Nano displays `"Supply 0000001000.000000000000000000 USDC"` and signs `H_tx`.
The proof guarantees that the string corresponds exactly to the signed calldata.

```
Public signals : H_tx  = Poseidon(calldata)
                 H_str = Poseidon(human_string)

Constraints    : 1. Poseidon(calldata)    == H_tx       binding tx
                 2. ABI_decode(calldata)  → params      parsing
                 3. format(params)        == string     formatting
                 4. Poseidon(human_string) == H_str     binding string
```

## Supported actions

| Action   | Selector   | Calldata  |
|----------|------------|-----------|
| supply   | 0x617ba037 | 132 bytes |
| borrow   | 0xa415bcad | 164 bytes |
| repay    | 0x573ade81 | 132 bytes |
| withdraw | 0x69328dec | 100 bytes |

## Supported tokens

USDC · USDT · DAI · WETH · WBTC · wstETH · LINK · AAVE (Aave v3 Ethereum mainnet)

## Structure

```
circuits/
  abi_primitives.circom      low-level building blocks: ExtractAddress, SlotToField…
  aave_abi_parsers.circom    one template per Aave action
  formatting.circom          uint256 → decimal ASCII digits
  token_registry.circom      address → symbol + decimals (hard-coded)
  string_assembly.circom     final string assembly
  clear_signing_proof.circom root circuit (component main)

scripts/
  validate_circuit.js        tests JS logic without circom (8 tests)
  gen_witness_input.js       generates witness_*.json for snarkjs
  export_vk_to_c.js          converts verification_key.json → zkn_clear_signing_vk.h

nano/
  zkn_clear_signing.h        C interface for Groth16 verification on the Nano

ledgerapp/                   Ledger Nano S+ app — see below for sideloading
```

## Prerequisites

- Node.js >= 18
- Rust + cargo (for circom)
- snarkjs (global)

## Usage

```bash
# First time
make install    # installs Rust, circom, snarkjs, npm deps (~10 min)

# Build
make compile    # compiles .circom → .r1cs + .wasm
make setup      # trusted setup → circuit_final.zkey + verification_key.json

# End-to-end test
make test       # generates and verifies 4 proofs (supply/borrow/repay/withdraw)

# All in one
make all

# After setup: export vk to the Nano
npm run export-vk    # → zkn_clear_signing_vk.h
```

## Running on a Ledger Nano S+

The `ledgerapp/` directory contains the Ledger Nano S+ app implementing the
Groth16 verifier. To load it onto your device you need to sideload it, as it is
not yet distributed through Ledger Live.

The easiest way is to use [ZKNOX Orange](https://zknox.com/zknox-orange/sideloader),
our open-source web-based sideloader — no Python environment or command-line setup
required. Connect your Nano S+, open the sideloader, select the app binary from
`ledgerapp/`, and follow the on-screen instructions.

Alternatively, you can use [ledgerblue](https://github.com/LedgerHQ/blue-loader-python)
directly:

```bash
pip install ledgerblue
python -m ledgerblue.loadApp \
  --targetId 0x33000004 \
  --fileName ledgerapp/app.hex \
  --appName "ZK Clear Signing" \
  --appVersion "0.0.1" \
  --delete
```

## Testing the Groth16 verifier over APDU

Once the app is loaded on the device, `js/test_groth16.js` sends a complete
Groth16 proof over USB and checks the response.

### Prerequisites

```bash
npm install @ledgerhq/hw-transport-node-hid
```

On Linux, grant USB access without sudo:

```bash
# Add udev rules for Ledger devices
wget -q -O - https://raw.githubusercontent.com/LedgerHQ/udev-rules/master/add_udev_rules.sh | sudo bash
```

### Running the tests

Open the ZK Clear Signing app on the Nano, then:

```bash
node js/test_groth16.js
```

### What it does

The script runs three tests against `INS 0x40` (`GROTH16_VERIFY`):

| Test | Payload | Expected response |
|------|---------|-------------------|
| 1 | Valid proof (repay, 448 bytes) | `0x01` (valid) |
| 2 | Same proof with π.A.x first byte flipped | `0x00` (invalid) |
| 3 | Same proof with H_tx first byte flipped | `0x00` (invalid) |

### APDU protocol

The 448-byte payload is sent in chunks of 250 bytes maximum. Each chunk uses:

```
CLA  = 0xE0
INS  = 0x40  (GROTH16_VERIFY)
P1   = chunk index (0, 1, …)
P2   = 0x80  (more chunks) | 0x00  (last chunk)
Lc   = chunk length
Data = chunk bytes
```

Intermediate chunks return `SW 9000` as acknowledgement. The last chunk returns
`SW 9000` + one result byte: `0x01` (proof valid) or `0x00` (proof invalid).

The payload layout is fixed:

```
Offset   Size   Field
     0     96   π.A   (G1 point, x‖y, 48 bytes each, big-endian)
    96    192   π.B   (G2 point, x.c0‖x.c1‖y.c0‖y.c1, 48 bytes each)
   288     96   π.C   (G1 point, x‖y)
   384     32   H_tx  (public input, big-endian scalar)
   416     32   H_str (public input, big-endian scalar)
  ────   ────
   448 bytes total
```

## R1CS constraint estimate

| Module                  | Constraints ≈ |
|-------------------------|--------------|
| ABI parsing (4 actions) | ~600         |
| Formatting (digits)     | ~280         |
| Token registry          | ~200         |
| String assembly         | ~50          |
| PoseidonBytes × 2       | ~480         |
| **Total**               | **~1 600**   |

2^14 = 16 384 → POT_SIZE=14 is more than sufficient.

## Curve

BLS12-381. The Groth16 verifier on the Nano uses `zkn_pairing_384` (already
implemented). The verification key constants are exported via `npm run export-vk`
into `zkn_clear_signing_vk.h`.
