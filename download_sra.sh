#!/usr/bin/env bash
set -euo pipefail

#chmod +x download_sra.sh
#./download_sra.sh sample_srr.txt fastq_files 8

infile="${1:-sample_srr.txt}"
outdir="${2:-fastq_files}"
threads="${3:-8}"

mkdir -p "$outdir"

while read -r srr; do
  prefetch "$srr"
  fasterq-dump "$srr" --split-files -O "$outdir" -e "$threads"
done < "$infile"