#!/bin/bash
source /opt/conda/etc/profile.d/conda.sh
conda activate bio

PANAROO_OUT_DIR=$1
FASTTREE_OUT=$2
 
FastTree -nt -gtr "$PANAROO_OUT_DIR/core_gene_alignment_filtered.aln" > "$FASTTREE_OUT"