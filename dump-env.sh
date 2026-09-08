#!/bin/sh
set -eu

count=$(env | wc -l)

echo "┌───────────────────────────────────────────┐"
echo "│  Environment Variables ($count)"
echo "└───────────────────────────────────────────┘"
echo

env | sort | while IFS='=' read -r key value; do
  printf '  %-30s %s\n' "$key" "$value"
done
