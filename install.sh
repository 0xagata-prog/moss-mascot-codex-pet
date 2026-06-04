#!/usr/bin/env sh
set -eu

pet_id="moss-mascot"
source_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
target_dir="$HOME/.codex/pets/$pet_id"

for file in pet.json spritesheet.png preview.png; do
  if [ ! -f "$source_dir/$file" ]; then
    echo "Missing required file: $file" >&2
    echo "Make sure you extracted the full zip before running this installer." >&2
    exit 1
  fi
done

mkdir -p "$target_dir"
cp -f "$source_dir/pet.json" "$source_dir/spritesheet.png" "$source_dir/preview.png" "$target_dir/"

echo
echo "MOSS Mascot installed successfully."
echo "Installed to: $target_dir"
echo
echo "Next steps:"
echo "1. Fully restart Codex."
echo "2. Open Settings -> Appearance -> Avatar/Pet."
echo "3. Select MOSS Mascot."
