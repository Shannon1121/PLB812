#!/bin/bash --login 
#SBATCH --time=168:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=100GB
#SBATCH --job-name Donnelly_fastqc_Results
#SBATCH --output=%x-%j.SLURMout

cd ${PBS_O_WORKDIR}

export PATH="${HOME}/miniconda3/envs/PLB812/bin:${PATH}"
export LD_LIBRARY_PATH="${HOME}/miniconda3/envs/PLB812/lib:${LD_LIBRARY_PATH}"

fastqc -f fastq -o /mnt/home/donne164/SRA_Results/fastq_Results/PLB812_git/PLB812/Lab_assignment/Assignment1/fastqc_results ./*
