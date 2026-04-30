# Group_2
Group 2 Project Directory

# Group_2
Group 2 Project Directory

### Output Directory Structure
```
results
├── multiqc
│   ├── multiqc_data
│   └── multiqc_report.html         # combined QC report
├── fasttree
│   └── snp_tree.nwk                # newick tree of passed QC assemblies
├── snp-sites
│   └── core_snps.aln               # alignment filtered to SNPs
├── panaroo                         
│   ├── core_gene_alignment.aln     # panaroo core genome
│   ├── ...
├── passed_assemblies               # all QC passed assemblies
│   ├── SAMPLE1
│   ├── SAMPLE1
├── prokka_gffs                     # gff for all QC passsed assemblies
│   ├── SAMPLE1.gff
│   ├── SAMPLE2.gff
├── prokka
│   ├── SAMPLE1                     # prokka annotation of each QC passed samples
│   │   ├── ...
│   ├── SAMPLE2
│   │   ├── ...
├── combined_cansnper               
│   └── combined_results.tsv        # all samples sequence type
├── cansnper_results                # individual sequence typing results of passed samples
│   ├── SAMPLE1_not_called.txt
│   ├── SAMPLE1_snps.txt
│   ├── SAMPLE2_not_called.txt
│   ├── SAMPLE2_snps.txt
├── sample_status.tsv               # Each sample's QC status
├── SAMPLE1                         # individual sample outputs
│   ├── amrfinderplus
│   ├── checkm
│   ├── fastqc
│   ├── quast
│   └── shovill
├── SAMPLE2                         # individual sample outputs
│   ├── amrfinderplus
│   ├── checkm
│   ├── fastqc
│   ├── quast
│   └── shovill
```