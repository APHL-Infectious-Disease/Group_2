#! /bin/bash

ASSEMBLIES_DIR=$1
PROKKA_OUT_DIR=$2
 
mkdir -p "$PROKKA_OUT_DIR"
 
for ASM in "$ASSEMBLIES_DIR"/*.fasta; do
    SAMPLE=$(basename "$ASM" .fasta)
    prokka --outdir "$PROKKA_OUT_DIR/$SAMPLE" --prefix "$SAMPLE" --cpus 4 --force "$ASM"
done