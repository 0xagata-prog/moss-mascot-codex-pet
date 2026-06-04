#!/usr/bin/env sh
set -eu

pet_id="moss-mascot"
target_dir="$HOME/.codex/pets/$pet_id"
base="https://raw.githubusercontent.com/0xagata-prog/moss-mascot-codex-pet/main"

mkdir -p "$target_dir"

for file in pet.json spritesheet.png preview.png; do
  echo "Downloading $file..."
  curl -fsSL "$base/$file" -o "$target_dir/$file"
done

echo ""
echo "MOSS Mascot installed!"
echo "Installed to: $target_dir"
echo ""
echo "Next steps:"
echo "1. Fully restart Codex."
echo "2. Open Settings -> Appearance -> Avatar/Pet."
echo "3. Select MOSS Mascot."
