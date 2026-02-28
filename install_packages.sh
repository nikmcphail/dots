#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PKG_FILE="$SCRIPT_DIR/packages.txt"

if [[ ! -f "$PKG_FILE" ]]; then
    echo "Error: packages.txt not found in $SCRIPT_DIR"
    exit 1
fi

# Detect AUR helper
if command -v paru >/dev/null 2>&1; then
    AUR_HELPER="paru"
elif command -v yay >/dev/null 2>&1; then
    AUR_HELPER="yay"
else
    echo "Error: Neither paru nor yay is installed."
    exit 1
fi

echo "Using AUR helper: $AUR_HELPER"

# Read packages (ignore comments and empty lines)
mapfile -t PACKAGES < <(grep -vE '^\s*#' "$PKG_FILE" | grep -vE '^\s*$')

if [[ ${#PACKAGES[@]} -eq 0 ]]; then
    echo "No packages to install."
    exit 0
fi

echo "Installing packages..."
"$AUR_HELPER" -S --needed --noconfirm "${PACKAGES[@]}"

# ---- Rust Post-Install Hook ----

if printf '%s\n' "${PACKAGES[@]}" | grep -qx "rustup"; then
    echo "Rust detected in package list. Running cargo setup..."

    if command -v cargo >/dev/null 2>&1; then
        rustup default stable || true
        rustup component add rust-analyzer || true
        cargo install tree-sitter-cli || true
        echo "Rust setup complete."
    else
        echo "Warning: cargo not found after installation."
    fi
fi

echo "Done!"
