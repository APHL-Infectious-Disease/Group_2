#!/bin/bash
source /opt/conda/etc/profile.d/conda.sh
conda activate bio

PROKKA_OUT_DIR=$1
PANAROO_OUT_DIR=$2

mkdir -p "$PANAROO_OUT_DIR"

panaroo -i "$PROKKA_OUT_DIR"/*/*.gff \
    -o "$PANAROO_OUT_DIR" \
    --clean-mode strict \
    -a core \
    --remove-invalid-genes \
    --core_threshold 0.99 \
    -t 4