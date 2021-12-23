#!/usr/bin/env bash

if [[ -z "$1" ]]; then
  echo "File path required." && exit 1
fi

TEMP_FILE="$(mktemp)"
wget "$1" -O "$TEMP_FILE"
openssl dgst -sha256 "$TEMP_FILE"
rm "$TEMP_FILE"
