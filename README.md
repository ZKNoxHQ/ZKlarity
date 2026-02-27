# ClearSigningProof — Aave v3 × Ledger Nano

Circuit ZK Groth16 (BLS12-381) qui prouve qu'une string humainement lisible
est une représentation fidèle d'un calldata Aave v3.

## Principe

Le Nano affiche `"Supply 0000001000.000000000000000000 USDC"` et signe `H_tx`.
La preuve garantit que la string correspond exactement au calldata signé.

```
Signaux publics  : H_tx  = Poseidon(calldata)
                   H_str = Poseidon(human_string)

Contraintes      : 1. Poseidon(calldata)      == H_tx       binding tx
                   2. ABI_decode(calldata)     → params      parsing
                   3. format(params)           == string     formatting
                   4. Poseidon(human_string)   == H_str      binding string
```

## Actions supportées

| Action   | Selector   | Calldata |
|----------|------------|----------|
| supply   | 0x617ba037 | 132 bytes |
| borrow   | 0xa415bcad | 164 bytes |
| repay    | 0x573ade81 | 132 bytes |
| withdraw | 0x69328dec | 100 bytes |

## Tokens supportés

USDC · USDT · DAI · WETH · WBTC · wstETH · LINK · AAVE (Aave v3 Ethereum mainnet)

## Structure

```
circuits/
  abi_primitives.circom      briques bas niveau : ExtractAddress, SlotToField…
  aave_abi_parsers.circom    un template par action Aave
  formatting.circom          uint256 → digits décimaux ASCII
  token_registry.circom      adresse → symbole + decimals (hard-coded)
  string_assembly.circom     assemblage string finale
  clear_signing_proof.circom circuit racine (component main)

scripts/
  validate_circuit.js        teste la logique JS sans circom (8 tests)
  gen_witness_input.js       génère witness_*.json pour snarkjs
  export_vk_to_c.js          converts verification_key.json → zkn_clear_signing_vk.h

nano/
  zkn_clear_signing.h        interface C pour la vérification Groth16 sur le Nano
```

## Prérequis

- Node.js >= 18
- Rust + cargo (pour circom)
- snarkjs (global)

## Usage

```bash
# Première fois
make install    # installe Rust, circom, snarkjs, npm deps (~10 min)

# Build
make compile    # compile .circom → .r1cs + .wasm
make setup      # trusted setup → circuit_final.zkey + verification_key.json

# Test bout-en-bout
make test       # génère + vérifie 4 preuves (supply/borrow/repay/withdraw)

# Tout en une commande
make all

# Après le setup : exporter la vk vers le Nano
npm run export-vk    # → zkn_clear_signing_vk.h
```

## Estimation contraintes R1CS

| Module               | Contraintes ≈ |
|----------------------|--------------|
| ABI parsing (4 actions) | ~600       |
| Formatting (digits)  | ~280         |
| Token registry       | ~200         |
| String assembly      | ~50          |
| PoseidonBytes × 2    | ~480         |
| **Total**            | **~1600**    |

2^14 = 16384 → POT_SIZE=14 largement suffisant.

## Courbe

BLS12-381. Le vérificateur Groth16 sur le Nano utilise `zkn_pairing_384`
(déjà implémenté). Les constantes de la verification key sont exportées
via `npm run export-vk` dans `zkn_clear_signing_vk.h`.
