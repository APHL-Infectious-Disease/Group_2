#!/usr/bin/env bash

source /opt/conda/etc/profile.d/conda.sh
conda activate bio

ASSEMBLIES_DIR=$1
PROKKA_OUT_DIR=$2

CPUS=$(nproc --all)
 
mkdir -p "$PROKKA_OUT_DIR"
 
for ASM in "$ASSEMBLIES_DIR"/*.fa; do
    SAMPLE=$(basename "$ASM" .fasta)
    prokka --outdir "$PROKKA_OUT_DIR/$SAMPLE" --prefix "$SAMPLE" --cpus $CPUS --force "$ASM"
done