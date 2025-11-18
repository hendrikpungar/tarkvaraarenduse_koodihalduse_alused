#!/bin/bash
# Kirjeldus: Käivitab generate_data.py skripti N korda ja salvestab tulemused data kataloogi
# Kasutamine: ./generate_data.sh [N]
# Argument N: Mitu korda skripti käivitada

N=${1:-10}

SCRIPT_DIR="$(dirname "$0")"
DATA_DIR="$SCRIPT_DIR/data"

mkdir -p "$DATA_DIR"


for i in $(seq 1 $N); do
    python3 "$SCRIPT_DIR/generate_data.py" > "$DATA_DIR/data${i}.txt"
done

