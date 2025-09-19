#!/bin/bash
#SBATCH --job-name=RNAseq_job
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=100mb
#SBATCH --time=00:01:00
#SBATCH --partition=windfall
#SBATCH --account=windfall


awk '$NF=="coding" {print}' gene_results.txt > coding_genes.txt
sed 's/\b100\b/500/g' coding_genes.txt > coding_genes_new.txt