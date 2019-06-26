# fastQC of reads prior to trimming

#!/usr/bin/env bash
source /home/kate/.bash_profile
mkdir fastQC_raw
mkdir fastQC_raw/L.perenne
zcat 0_raw_data/first_run/Lane1/C7_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/C7_1
zcat 0_raw_data/first_run/Lane2/C7_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/C7_2
zcat 0_raw_data/first_run/Lane1/C8_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/C8_1
zcat 0_raw_data/first_run/Lane2/C8_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/C8_2
zcat 0_raw_data/first_run/Lane1/C9_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/C9_1
zcat 0_raw_data/first_run/Lane2/C9_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/C9_2
zcat 0_raw_data/first_run/Lane1/N1_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/N1_1
zcat 0_raw_data/first_run/Lane2/N1_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/N1_2
zcat 0_raw_data/first_run/Lane1/N2_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/N2_1
zcat 0_raw_data/first_run/Lane2/N2_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/N2_2
zcat 0_raw_data/first_run/Lane1/N3_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/N3_1
zcat 0_raw_data/first_run/Lane2/N3_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/N3_2
zcat 0_raw_data/first_run/Lane1/S10_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/S10_1
zcat 0_raw_data/first_run/Lane2/S10_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/S10_2
zcat 0_raw_data/first_run/Lane1/S11_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/S11_1
zcat 0_raw_data/first_run/Lane2/S11_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/S11_2
zcat 0_raw_data/first_run/Lane1/S12_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/S12_1
zcat 0_raw_data/first_run/Lane2/S12_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/S12_2
zcat 0_raw_data/first_run/Lane1/W4_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/W4_1
zcat 0_raw_data/first_run/Lane2/W4_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/W4_2
zcat 0_raw_data/first_run/Lane1/W5_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/W5_1
zcat 0_raw_data/first_run/Lane2/W5_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/W5_2
zcat 0_raw_data/first_run/Lane1/W6_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/W6_1
zcat 0_raw_data/first_run/Lane2/W6_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/L.perenne/W6_2
