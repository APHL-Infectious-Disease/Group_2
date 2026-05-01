
## APHL 2026 Annual Conference

### Bioinformatics Hackathon, hosted by the APHL Bioinformatics Leadership Program 2025-2026 Cohort

## Group 2

<br>

# **A.F.T.G.E.R**:​ A Francisella tularensis Genome Exploration Resource

<br>

## Background

*Francisella tularensis* is the causative agent of tularemia ("rabbit fever")​. It is zoonotic, being transmitted by numerous vectors such as mosquitoes and ticks. It can also be transmitted by contact with contaminated animal carcasses, water, food, or soil, and can survive on fomites for several weeks. Reservoir hosts include rabbits, rodents, birds, and deer. *F. tularensis* is known for its high virulence, low infectious dose, ability to infect through multiple exposure routes, and ability to evade the immune system. 

It is critically important that public health laboratories are able to efficiently perform bioinformatics analysis for *F. tularensis* due to its importance as a human pathogen for its potential use in bioterrorism. Its highly clonal nature creates a challenge for taxonomy and phylogeny​, requiring whole genome sequencing to effectively differentiate *F. tularensis* from closely related species​, identify subspecies, track outbreaks​, identify AMR genes, and develop vaccines. 

## Introduction

**A.F.T.G.E.R** (A Francisella tularensis Genome Exploration Resource) is a bioinformatics pipeline for the analysis of whole genome sequencing data of *Francisella tularensis* isolates from paired-end short-read whole genome sequencing data. It accepts paired fastq files and will perform pre-processing, de-novo assembly, QC metrics, identification of AMR genes, SNP typing, and data visualization. 

## Components

- FastQC
- Shovill
- Quast
- CheckM
- CanSNPer2
- AMRFinder+
- Prokka
- Panaroo
- MultiQC
- SNP-sites
- FastTree
- MicroReact

## Workflow

<img width="1280" height="720" alt="Slide10" src="https://github.com/user-attachments/assets/771d8285-7b31-4080-974a-8754f76b4d9c" />

## Usage

## Output 

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
