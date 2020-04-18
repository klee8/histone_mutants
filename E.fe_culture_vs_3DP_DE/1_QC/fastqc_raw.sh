# fastQC of reads prior to trimming

#!/usr/bin/env bash
source /home/kate/.bash_profile
mkdir fastQC_raw
mkdir fastQC_raw/E.festucae_Fl1 fastQC_raw/E.festucae_Fl1/WT_CULT
#zcat 0_raw_data/run_2/Lane2/N1_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1_v3/N1_2
#zcat 0_raw_data/run_2/Lane1/N2_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1_v3/N2_1
#zcat 0_raw_data/run_2/Lane2/N2_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1_v3/N2_2
#zcat 0_raw_data/run_2/Lane1/N3_1.fastq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1_v3/N3_1
#zcat 0_raw_data/run_2/Lane2/N3_2.fastq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1_v3/N3_2
zcat ../0_raw_data/run_1/Lane1/SRR7640306.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/WT_CULT
zcat ../0_raw_data/run_1/Lane1/SRR7640308.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/WT_CULT
zcat ../0_raw_data/run_1/Lane1/SRR7640309.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/WT_CULT
