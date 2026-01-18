:#!/usr/bin/env bash
set -e

SRC="$(cd "$(dirname "$0")" && pwd)/wezterm"
DEST="$HOME/.config/wezterm"

if [ -e "$DEST" ]; then
  echo "❌ ~/.config/wezterm already exists."
  echo "   Please back it up or remove it first."
  exit 1
fi

mkdir -p "$HOME/.config"
ln -s "$SRC" "$DEST"

echo "✅ WezTerm config installed!"
echo "Reload with CTRL + SHIFT + R"
