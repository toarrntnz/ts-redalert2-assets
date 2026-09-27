#!/usr/bin/env bash
# Rebuild game-res/ra2.mix from the split parts committed to this repository.
set -euo pipefail
cd "$(dirname "$0")"
if [ ! -d game-res ]; then
  echo "game-res/ not found" >&2
  exit 1
fi
if [ -f game-res/ra2.mix ]; then
  echo "game-res/ra2.mix already exists"
  exit 0
fi
shopt -s nullglob
parts=(game-res/ra2.mix.part*)
if [ ${#parts[@]} -eq 0 ]; then
  echo "no ra2.mix.part* files found" >&2
  exit 1
fi
cat "${parts[@]}" > game-res/ra2.mix
echo "rebuilt game-res/ra2.mix"
