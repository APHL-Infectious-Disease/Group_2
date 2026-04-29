#!/usr/bin/env bash

source /opt/conda/etc/profile.d/conda.sh
conda activate bio

ALN=$1
FASTTREE_OUT=$2
 
FastTree -nt -gtr "$ALN" > "$FASTTREE_OUT"