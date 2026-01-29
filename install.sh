#!/usr/bin/env bash
set -e

# Colors for better output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}🚀 Starting WezTerm Glassy installation...${NC}"

# 1. Check if WezTerm is actually installed
if ! command -v wezterm &> /dev/null; then
    echo -e "${RED}❌ Error: WezTerm is not installed.${NC}"
    echo "Please install WezTerm first: https://wezfurlong.org/wezterm/install/"
    exit 1
fi

SRC="$(cd "$(dirname "$0")" && pwd)/wezterm"
DEST="$HOME/.config/wezterm"

# 2. Handle existing config with a backup instead of failing
if [ -e "$DEST" ] || [ -L "$DEST" ]; then
    BACKUP="$DEST.bak.$(date +%Y%m%d_%H%M%S)"
    echo -e "${YELLOW}⚠️  Existing config found at $DEST.${NC}"
    echo -e "📦 Moving old config to $BACKUP"
    mv "$DEST" "$BACKUP"
fi

# 3. Create parent directory if needed
mkdir -p "$HOME/.config"

# 4. Create the symlink
ln -s "$SRC" "$DEST"

echo -e "${GREEN}✅ WezTerm config successfully linked!${NC}"
echo -e "👉 Make sure you have '${YELLOW}JetBrains Mono${NC}' font installed for the best experience."
echo -e "🔄 Reload WezTerm with: ${GREEN}CTRL + SHIFT + R${NC}"
