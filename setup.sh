#!/bin/bash
REPO_URL="https://github.com/Cygra/morning-coffee-night-beer.git"
TMP_DIR=$(mktemp -d)

git clone "$REPO_URL" "$TMP_DIR"

bash "$TMP_DIR/install.sh"

rm -rf "$TMP_DIR"

echo "✅ Installation complete and cleanup done!"
