# ══════════════════════════════════════════════════════════════════════════
# Makefile — ClearSigningProof (BLS12-381)
# ══════════════════════════════════════════════════════════════════════════

CIRCUIT_NAME  := clear_signing_proof
BUILD_DIR     := build
KEYS_DIR      := keys
POT_DIR       := pot
POT_SIZE      := 14
CURVE         := bls12-381

# circom n'est pas sur crates.io — installé depuis GitHub dans ~/.cargo/bin
CARGO_BIN     := $(HOME)/.cargo/bin
export PATH   := $(CARGO_BIN):$(PATH)

# Couleurs
GREEN  := \033[0;32m
BLUE   := \033[0;34m
RED    := \033[0;31m
NC     := \033[0m

.PHONY: all install compile setup test clean clean_build help export_vk _prove

all: install compile setup test

# ── Aide ───────────────────────────────────────────────────────────────
help:
	@echo ""
	@echo "  make install   → installe circom (GitHub) + snarkjs + npm deps"
	@echo "  make compile   → compile .circom → .r1cs + .wasm"
	@echo "  make setup     → powersoftau + groth16 setup + verification_key.json"
	@echo "  make test      → génère + vérifie 4 preuves (supply/borrow/repay/withdraw)"
	@echo "  make all       → install + compile + setup + test"
	@echo "  make export_vk → verification_key.json → zkn_clear_signing_vk.h"
	@echo "  make clean     → supprime build/ keys/ pot/ witnesses proofs"
	@echo "  make clean_build → supprime build/ + witnesses/proofs (garde keys/ pot/)"
	@echo ""

# ══════════════════════════════════════════════════════════════════════════
# make install
# ══════════════════════════════════════════════════════════════════════════
install:
	@echo ""
	@printf "$(BLUE)[1/4] INSTALL$(NC)\n"

	@# ── Rust (si absent) ─────────────────────────────────────────────
	@if command -v cargo >/dev/null 2>&1 || [ -f "$(HOME)/.cargo/bin/cargo" ]; then \
		printf "$(GREEN)[OK]$(NC) Rust/cargo déjà présent\n"; \
	else \
		printf "$(BLUE)[..]$(NC) Installation de Rust (rustup)...\n"; \
		curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y; \
		printf "$(GREEN)[OK]$(NC) Rust installé — relancer le shell ou sourcer $(HOME)/.cargo/env\n"; \
	fi

	@# ── circom depuis GitHub ─────────────────────────────────────────
	@# circom n'est PAS sur crates.io, installer depuis le dépôt officiel
	@if command -v circom >/dev/null 2>&1; then \
		printf "$(GREEN)[OK]$(NC) circom : $$(circom --version)\n"; \
	else \
		printf "$(BLUE)[..]$(NC) Clonage + compilation de circom (iden3/circom)...\n"; \
		rm -rf /tmp/circom_src; \
		git clone --depth 1 https://github.com/iden3/circom.git /tmp/circom_src; \
		cd /tmp/circom_src && $(HOME)/.cargo/bin/cargo build --release; \
		$(HOME)/.cargo/bin/cargo install --path circom; \
		printf "$(GREEN)[OK]$(NC) circom installé : $$($(HOME)/.cargo/bin/circom --version)\n"; \
	fi

	@# ── snarkjs ──────────────────────────────────────────────────────
	@if command -v snarkjs >/dev/null 2>&1; then \
		printf "$(GREEN)[OK]$(NC) snarkjs déjà installé\n"; \
	else \
		printf "$(BLUE)[..]$(NC) Installation de snarkjs...\n"; \
		npm install -g snarkjs; \
		printf "$(GREEN)[OK]$(NC) snarkjs installé\n"; \
	fi

	@# ── Dépendances npm locales ───────────────────────────────────────
	@printf "$(BLUE)[..]$(NC) npm install...\n"
	@npm install --silent
	@printf "$(GREEN)[OK]$(NC) Dépendances npm prêtes\n"
	@echo ""

# ══════════════════════════════════════════════════════════════════════════
# make compile
# ══════════════════════════════════════════════════════════════════════════
compile: $(BUILD_DIR)/$(CIRCUIT_NAME).r1cs

$(BUILD_DIR)/$(CIRCUIT_NAME).r1cs: circuits/$(CIRCUIT_NAME).circom \
	circuits/abi_primitives.circom \
	circuits/aave_abi_parsers.circom \
	circuits/formatting.circom \
	circuits/token_registry.circom \
	circuits/string_assembly.circom
	@echo ""
	@printf "$(BLUE)[2/4] COMPILE$(NC)\n"
	@mkdir -p $(BUILD_DIR)
	circom circuits/$(CIRCUIT_NAME).circom \
		--r1cs --wasm --sym \
		--prime bls12381 \
		--output $(BUILD_DIR) \
		-l node_modules
	@printf "$(GREEN)[OK]$(NC) Circuit compilé\n"
	@printf "$(BLUE)[..]$(NC) Statistiques R1CS :\n"
	@snarkjs r1cs info $(BUILD_DIR)/$(CIRCUIT_NAME).r1cs
	@echo ""

# ══════════════════════════════════════════════════════════════════════════
# make setup
# ══════════════════════════════════════════════════════════════════════════
setup: $(KEYS_DIR)/verification_key.json

$(KEYS_DIR)/verification_key.json: $(BUILD_DIR)/$(CIRCUIT_NAME).r1cs
	@echo ""
	@printf "$(BLUE)[3/4] SETUP$(NC)\n"
	@mkdir -p $(KEYS_DIR) $(POT_DIR)

	@if [ -f "$(POT_DIR)/pot_final.ptau" ]; then \
		printf "$(GREEN)[OK]$(NC) Powers of Tau déjà présent\n"; \
	else \
		printf "$(BLUE)[..]$(NC) Powers of Tau ($(CURVE), 2^$(POT_SIZE))...\n"; \
		snarkjs powersoftau new $(CURVE) $(POT_SIZE) $(POT_DIR)/pot_0000.ptau -v; \
		snarkjs powersoftau contribute $(POT_DIR)/pot_0000.ptau $(POT_DIR)/pot_0001.ptau \
			--name="build" -v -e="$$(date +%s%N | sha256sum | head -c 64)"; \
		snarkjs powersoftau prepare phase2 \
			$(POT_DIR)/pot_0001.ptau $(POT_DIR)/pot_final.ptau -v; \
		printf "$(GREEN)[OK]$(NC) Powers of Tau générés\n"; \
	fi

	@printf "$(BLUE)[..]$(NC) Groth16 setup...\n"
	@snarkjs groth16 setup \
		$(BUILD_DIR)/$(CIRCUIT_NAME).r1cs \
		$(POT_DIR)/pot_final.ptau \
		$(KEYS_DIR)/circuit_0000.zkey
	@snarkjs zkey contribute \
		$(KEYS_DIR)/circuit_0000.zkey \
		$(KEYS_DIR)/circuit_final.zkey \
		--name="final" -v -e="$$(openssl rand -hex 32)"
	@snarkjs zkey export verificationkey \
		$(KEYS_DIR)/circuit_final.zkey \
		$(KEYS_DIR)/verification_key.json
	@printf "$(GREEN)[OK]$(NC) Setup complet\n"
	@echo ""

# ══════════════════════════════════════════════════════════════════════════
# make test
# ══════════════════════════════════════════════════════════════════════════
test: $(KEYS_DIR)/circuit_final.zkey
	@echo ""
	@printf "$(BLUE)[4/4] TEST$(NC)\n"
	@node scripts/gen_witness_input.js all
	@$(MAKE) --no-print-directory _prove ACTION=supply
	@$(MAKE) --no-print-directory _prove ACTION=borrow
	@$(MAKE) --no-print-directory _prove ACTION=repay
	@$(MAKE) --no-print-directory _prove ACTION=withdraw
	@echo ""
	@printf "$(GREEN)══════════════════════════════════════════$(NC)\n"
	@printf "$(GREEN)  4/4 preuves valides ✓$(NC)\n"
	@printf "$(GREEN)══════════════════════════════════════════$(NC)\n"
	@echo ""

_prove:
	@printf "$(BLUE)[..]$(NC) $(ACTION) : witness binaire...\n"
	@node $(BUILD_DIR)/$(CIRCUIT_NAME)_js/generate_witness.js \
		$(BUILD_DIR)/$(CIRCUIT_NAME)_js/$(CIRCUIT_NAME).wasm \
		witness_$(ACTION).json \
		witness_$(ACTION).wtns
	@printf "$(BLUE)[..]$(NC) $(ACTION) : preuve Groth16...\n"
	@snarkjs groth16 prove \
		$(KEYS_DIR)/circuit_final.zkey \
		witness_$(ACTION).wtns \
		proof_$(ACTION).json \
		public_$(ACTION).json
	@printf "$(BLUE)[..]$(NC) $(ACTION) : vérification...\n"
	@snarkjs groth16 verify \
		$(KEYS_DIR)/verification_key.json \
		public_$(ACTION).json \
		proof_$(ACTION).json \
	&& printf "$(GREEN)[OK]$(NC) $(ACTION) ✓\n" \
	|| (printf "$(RED)[KO]$(NC) $(ACTION) ✗\n" && exit 1)

# ── Export vk → C ─────────────────────────────────────────────────────
export_vk: $(KEYS_DIR)/verification_key.json
	@node scripts/export_vk_to_c.js
	@printf "$(GREEN)[OK]$(NC) zkn_clear_signing_vk.h généré\n"

# ── Nettoyage ──────────────────────────────────────────────────────────
clean:
	rm -rf $(BUILD_DIR) $(KEYS_DIR) $(POT_DIR)
	rm -f witness_*.json witness_*.wtns proof_*.json public_*.json
	rm -f zkn_clear_signing_vk.h

clean_build:
	rm -rf $(BUILD_DIR)
	rm -f witness_*.json witness_*.wtns proof_*.json public_*.json
