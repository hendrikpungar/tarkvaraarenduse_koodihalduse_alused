#!/bin/bash

# Kirjeldus: Loendab unikaalsete arvude esinemissagedused kõikides data failides
# Kasutamine: ./analyze_data.sh

SCRIPT_DIR="$(dirname "$0")"
DATA_DIR="$SCRIPT_DIR/../data"
RESULTS_DIR="$SCRIPT_DIR/../results"

mkdir -p "$RESULTS_DIR"


cat "$DATA_DIR"/*.txt | sort -n | uniq -c | sort -rn > "$RESULTS_DIR/summary_total_unique_numbers_counted.txt"
