# claude.md — Instructions pour les prochaines sessions

## Contexte du projet

Circuit ZK Groth16 (BLS12-381) qui prouve qu'une string humainement lisible
correspond fidèlement à un calldata Aave v3. Destiné à tourner sur un Ledger Nano
qui dispose déjà d'un vérificateur de pairing BLS12-381 (`zkn_pairing_384`).

Lire `decision.md` avant toute modification ou suggestion.

---

## Stack technique

- **Circom 2.x** compilé avec `--prime bls12381`
- **snarkjs** pour le trusted setup et la génération de preuves Groth16
- **poseidon-bls12381-circom** (circuit) + **poseidon-bls12381** (JS) — calibrés BLS12-381
- **circomlib** pour les composants de base (IsZero, LessThan, Num2Bits…)
- **Node.js** pour le witness generator et les scripts utilitaires
- **C** pour l'interface Nano (`nano/zkn_clear_signing.h`)

---

## Structure du projet

```
circuits/
  abi_primitives.circom         primitives ABI (ExtractAddress, ExtractUint256…)
  aave_abi_parsers.circom       un template ParseXxx() par fonction Aave
  formatting.circom             FormatAmount + helpers (digits, ASCII, leading zeros)
  token_registry.circom         registre hard-codé 8 tokens (adresse → symbol/decimals/scale)
  string_assembly.circom        FormatXxxString() par action
  clear_signing_proof.circom    circuit racine (ActionMux + StringMux + Poseidon)

scripts/
  validate_circuit.js           simulation JS pure (13 actions, à maintenir en sync)
  gen_witness_input.js          génère witness_*.json pour make test
  export_vk_to_c.js             verification_key.json → zkn_clear_signing_vk.h

nano/
  zkn_clear_signing.h           interface C pour la vérification sur le Nano

Makefile
decision.md
claude.md
```

---

## Règles Circom — erreurs rencontrées, à ne JAMAIS reproduire

### 1. Pas de `signal` ou `component` dans un `for` [T2011]

```circom
// ✗ ERREUR
for (var i = 0; i < N; i++) { signal acc; component isz = IsZero(); }

// ✓ CORRECT — hoister en tableau avant la boucle
signal acc[N];
component isz[N];
for (var i = 0; i < N; i++) { isz[i] = IsZero(); acc[i] <== ...; }
```

### 2. Une seule multiplication par contrainte [T3001]

```circom
// ✗ ERREUR — deux produits dans une contrainte
signal c; c <== a * a + b * b;

// ✓ CORRECT — un produit par signal intermédiaire
signal sq_a; sq_a <== a * a;
signal sq_b; sq_b <== b * b;
signal c;    c    <== sq_a + sq_b;
```

`signal <== CONSTANTE * signal + signal` est valide (combinaison linéaire).
`signal <== signal * signal` compte comme UN produit, c'est la limite.

### 3. Tous les inputs d'un composant doivent être connectés [T3001]

```circom
// ✗ ERREUR — value jamais connecté → erreur à la compilation
component r = RecomposeDecimal(N);
for (var i = 0; i < N; i++) r.digits[i] <== digits[i];
// r.value pas connecté !

// ✓ Connecter tous les inputs OU ne pas instancier si logique déjà faite manuellement
```

### 4. API Poseidon255 ≠ circomlib Poseidon

```circom
// ✗ circomlib BN254 — JAMAIS dans ce projet
component h = Poseidon(N); h.inputs[i] <== x[i];

// ✓ poseidon-bls12381-circom BLS12-381 — TOUJOURS
component h = Poseidon255(N); h.in[i] <== x[i];
```

Côté JS : utiliser `poseidon-bls12381` (package npm), PAS `circomlibjs`.
```js
const { poseidon6 } = require('poseidon-bls12381');
const hash = poseidon6([field1, field2, ...]);   // BigInt[]
```

### 5. Ordre des déclarations dans les templates

Circom autorise les composants à être utilisés avant leur déclaration dans le
fichier, **mais** un signal d'un composant ne peut pas être lu avant que ce
composant soit déclaré dans la même portée. En pratique : déclarer `reg`
(TokenRegistry) **avant** `fmt` (FormatAmount) pour pouvoir brancher
`fmt.scale_factor <== reg.scale_factor`.

### 6. Chaque action a son propre template Format*String

`FormatBorrowString` produit `"Borrow ..."` et `FormatRepayString` produit
`"Repay ..."` — ce sont deux templates distincts même s'ils ont la même structure.
Ne jamais réutiliser un template en changeant juste le préfixe via une variable
(les constantes `var PREFIX[]` sont figées à la compilation).

### 7. Autres règles de base

- `<==` pour les contraintes. Pas de `==>`. `<--` uniquement pour hints sans contrainte.
- Pas de division dans les contraintes — hint + vérification de reconstruction.
- `var` = compilation statique. `signal` = R1CS runtime.
- Les templates ne sont pas des fonctions — pas de `return`, pas de récursion.

---

## Architecture du circuit (état actuel : 13 actions)

### action_type → parser → formateur

| action_type | Fonction Aave | Parser | Formateur | String produite |
|---|---|---|---|---|
| 0 | supply | ParseSupply | FormatSupplyString | `Supply <amount> <TOKEN>` |
| 1 | borrow | ParseBorrow | FormatBorrowString | `Borrow <amount> <TOKEN> (stable\|variable)` |
| 2 | repay | ParseRepay | FormatRepayString | `Repay <amount> <TOKEN> (stable\|variable)` |
| 3 | withdraw | ParseWithdraw | FormatWithdrawString | `Withdraw <amount> <TOKEN>` |
| 4 | liquidationCall | ParseLiquidationCall | FormatLiquidationString | `Liquidate <amount> <DEBT_TOKEN> (collat: <COL_TOKEN>)` |
| 5 | swapBorrowRateMode | ParseSwapBorrowRateMode | FormatSwapRateString | `Swap rate <TOKEN>: stable→variable` |
| 6 | flashLoanSimple | ParseFlashLoanSimple | FormatFlashLoanSimpleString | `Flash loan <amount> <TOKEN>` |
| 7 | setCollateral | ParseSetCollateral | FormatSetCollateralString | `Collateral <TOKEN>: enable\|disable` |
| 8 | setEMode | ParseSetEMode | FormatSetEModeString | `EMode: <categoryId>` |
| 9 | approveDelegation | ParseApproveDelegation | FormatApproveDelegationString | `Delegate <amount> <TOKEN>` |
| 10 | delegationWithSig | ParseDelegationWithSig | FormatDelegationWithSigString | `Delegate (sig) <amount> <TOKEN>` |
| 11 | approve | ParseApprove | FormatApproveString | `Approve <amount> <TOKEN>` |
| 12 | permit | ParsePermit | FormatPermitString | `Permit <amount> <TOKEN>` |

### Signaux du circuit racine

**MAX_CALLDATA = 228** (permit / delegationWithSig : 4 + 7×32)

**Publics** :
- `H_tx`  : Poseidon(calldata padded 228 bytes)
- `H_str` : Poseidon(human_string 64 bytes)

**Privés** :
- `calldata[228]`        : bytes bruts padded 0x00
- `calldata_len`         : longueur réelle
- `action_type`          : 0–12
- `token_idx`            : index dans le registre (0–7)
- `int_digits[10]`       : chiffres partie entière (padded à gauche)
- `frac_digits[18]`      : chiffres partie fractionnaire (padded à droite)
- `n_leading_zeros`      : nb de zéros de tête dans int_digits
- `rate_mode`            : 0=N/A, 1=stable, 2=variable
- `use_collateral`       : 0=disable, 1=enable (setCollateral uniquement)
- `category_id`          : uint8 eMode (setEMode uniquement)
- `human_string[64]`     : string ASCII produite

---

## Normalisation des montants : scale_factor

Les tokens ont des décimales différentes (6, 8, 18). Le circuit travaille
toujours avec 18 décimales (`MAX_DECIMALS = 18`).

`token_registry.circom` expose `scale_factor = 10^(18 - decimals)` :
- USDC/USDT (6 dec) : scale = 10^12
- WBTC (8 dec) : scale = 10^10
- Autres (18 dec) : scale = 1

La contrainte de recomposition dans `FormatAmount` :
```circom
reconstructed <== raw_amount * scale_factor;
// reconstructed === int_acc * 10^18 + frac_acc
```

**Côté JS (gen_witness_input.js)** : appliquer le même scale avant de décomposer.

---

## Selectors des fonctions Aave v3

```
0x617ba037  supply(address,uint256,address,uint16)
0xa415bcad  borrow(address,uint256,uint256,uint16,address)
0x573ade81  repay(address,uint256,uint256,address)
0x69328dec  withdraw(address,uint256,address)
0x00a718a9  liquidationCall(address,address,address,uint256,bool)
0x94ba89a2  swapBorrowRateMode(address,uint256)
0x42b0b77c  flashLoanSimple(address,address,uint256,bytes,uint16)
0x5a3b74b9  setUserUseReserveAsCollateral(address,bool)
0x28530a47  setUserEMode(uint8)
0xc04a8a10  approveDelegation(address,uint256)
0x29ffd7cd  delegationWithSig(address,uint256,uint256,address,uint8,bytes32,bytes32)
0x095ea7b3  approve(address,uint256)
0xd505accf  permit(address,address,uint256,uint256,uint8,bytes32,bytes32)
```

---

## Trusted setup Groth16 — deux phases

- **Phase 1 — Powers of Tau** (`pot/pot_final.ptau`) : liée à POT_SIZE=14 (2^14
  contraintes max), **indépendante du circuit**. À ne refaire que si on dépasse
  la limite de contraintes.
- **Phase 2 — Circuit-specific** (`keys/*.zkey`) : liée au `.r1cs` exact. **À
  refaire à chaque `make compile`.**

`make compile` supprime automatiquement `keys/` → `make setup` refait
seulement la phase 2 (~2 min, pot réutilisé).

```bash
make clean_build   # supprime build/ + witnesses, garde keys/ et pot/
make compile       # recompile + invalide keys/
make setup         # phase 2 seulement (~2 min)
make test
```

---

## Workflow de développement

```bash
node scripts/validate_circuit.js   # simulation JS, rapide
node scripts/gen_witness_input.js all
make compile
make setup
make test
make export_vk                     # → zkn_clear_signing_vk.h
```

---

## État au moment de la rédaction

- [x] supply, borrow, repay, withdraw : preuves Groth16 OK (2/4 → 4/4 en cours)
- [x] Poseidon JS aligné sur BLS12-381 (`poseidon-bls12381` npm)
- [x] scale_factor : normalisation décimales correcte dans le circuit et le JS
- [x] FormatRepayString : template distinct de FormatBorrowString
- [x] 9 nouveaux parsers ABI ajoutés (liquidation, swap, flash, delegate, approve, permit)
- [ ] 9 nouveaux Format*String à écrire dans string_assembly.circom
- [ ] ActionMux + StringMux à étendre de 4 à 13 actions
- [ ] gen_witness_input.js : cas de test pour les 9 nouvelles actions
- [ ] validate_circuit.js : 9 nouveaux cas de test
- [ ] make compile + make test avec les 13 actions

---

## Points de synchronisation critiques

- `action_type` : `clear_signing_proof.circom` ↔ `gen_witness_input.js` ↔ `validate_circuit.js`
- Index tokens : `token_registry.circom` ↔ `gen_witness_input.js`
- `SYMBOL_LEN = 6` — tout symbole > 6 chars casse le circuit
- `STRING_LEN = 64` — vérifier que toutes les strings tiennent (la plus longue actuelle : ~57 chars)
- `MAX_CALLDATA = 228` — mis à jour pour permit/delegationWithSig
- `PoseidonBytes(228)` = 8 blocs de 31 bytes → `poseidon8` côté JS
