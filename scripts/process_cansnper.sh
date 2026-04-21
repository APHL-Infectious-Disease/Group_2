#!/bin/bash
source /opt/conda/etc/profile.d/conda.sh
conda activate cansnper

DATABASE="${1:-francisella_tularensis.db}"
ASSEMBLIES_DIR="${2:-assemblies}"
OUTPUT_FILE="${3:-combined_results.tsv}"

fasta_files=("$ASSEMBLIES_DIR"/*.fasta)

CanSNPer2 --database "$DATABASE" "$ASSEMBLIES_DIR"/*.fasta --verbose -o cansnper_results

echo -e "sample_name\tsnp_path\tfinal_snp\tfound_depth" > "$OUTPUT_FILE"

for snp_file in cansnper_results/*_snps.txt; do
    if [ -f "$snp_file" ]; then
        
        filename=$(basename "$snp_file")
        sample_name="${filename%_snps.txt}"
        
        # SNP path and final SNP
        snp_path=$(grep "^SNP path:" "$snp_file" | cut -d' ' -f3-)
        final_snp_line=$(grep "^Final SNP:" "$snp_file")
        
        if [ -n "$final_snp_line" ]; then
            # Final SNP and found/depth
            final_snp=$(echo "$final_snp_line" | awk '{print $3}')
            found_depth=$(echo "$final_snp_line" | awk -F'found/depth: ' '{print $2}')

            echo -e "${sample_name}\t${snp_path}\t${final_snp}\t${found_depth}" >> "$OUTPUT_FILE"
        fi
    fi
done