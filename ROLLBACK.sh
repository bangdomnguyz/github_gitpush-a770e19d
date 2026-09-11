#!/usr/bin/env bash
set -eu

target="${1:?usage: bash ROLLBACK.sh <copy-path>}"
baseline="$(dirname "$0")/.README.md.orig"

if [ ! -f "$baseline" ]; then
  printf 'baseline not found: %s\n' "$baseline" >&2
  exit 2
fi

cp "$baseline" "$target"
printf 'restored %s from %s\n' "$target" "$baseline"
