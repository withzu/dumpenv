#!/bin/sh
set -eu

count=$(env | wc -l)
title=" Environment Variables ($count)"
width=45

printf '┌'; printf -- '─%.0s' $(seq 1 "$width"); printf '┐\n'
printf '│%-*s│\n' "$width" "$title"
printf '└'; printf -- '─%.0s' $(seq 1 "$width"); printf '┘\n'
echo

env | sort | while IFS='=' read -r key value; do
  printf '  %-30s %s\n' "$key" "$value"
done
