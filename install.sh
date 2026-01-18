#!/bin/bash
# Sisyphus Config Installer
# Install command: curl -fsSL https://raw.githubusercontent.com/Tinycute00/sisyphus-config/main/install.sh | bash

set -e

echo "🪨 Installing Sisyphus Config (Professional Team Mode)..."

CONFIG_DIR="$HOME/.config/opencode"
SUPERPOWERS_DIR="$CONFIG_DIR/superpowers"
SKILLS_DIR="$SUPERPOWERS_DIR/skills"
REPO_URL="https://github.com/Tinycute00/sisyphus-config.git"
TEMP_DIR=$(mktemp -d)

# 1. Backup existing config
if [ -f "$CONFIG_DIR/opencode.json" ]; then
    echo "📦 Backing up existing config..."
    mv "$CONFIG_DIR/opencode.json" "$CONFIG_DIR/opencode.json.bak"
fi

# 2. Clone repo
echo "⬇️ Cloning Sisyphus config..."
git clone --depth 1 $REPO_URL $TEMP_DIR

# 3. Install Config
mkdir -p "$CONFIG_DIR"
cp "$TEMP_DIR/opencode.json" "$CONFIG_DIR/opencode.json"

# 4. Install Skills
mkdir -p "$SKILLS_DIR"
cp -r "$TEMP_DIR/superpowers/skills/"* "$SKILLS_DIR/"

# 5. Cleanup
rm -rf "$TEMP_DIR"

echo ""
echo "✅ Installation Complete!"
echo "⚠️  IMPORTANT: You must set the GITHUB_PERSONAL_ACCESS_TOKEN environment variable."
echo "👉 usage: opencode"
