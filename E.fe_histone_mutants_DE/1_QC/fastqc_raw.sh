# fastQC of reads prior to trimming

#!/usr/bin/env bash
source /home/kate/.bash_profile
mkdir fastQC_raw
mkdir fastQC_raw/E.festucae_Fl1
cd fastQC_raw/E.festucae_Fl1/
mkdir C7_1 C7_2 C8_1 C8_2 C9_1 C9_2 N1_1 N1_2 N2_1 N2_2 N3_1 N3_2 S10_1 S10_2 S11_1 S11_2 S12_1 S12_2 W4_1 W4_2 W5_1 W5_2 W6_1 W6_2
cd ../../
zcat ../H201SC19030217/raw_data/C7_1.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/C7_1
zcat ../H201SC19030217/raw_data/C7_2.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/C7_2
zcat ../H201SC19030217/raw_data/C8_1.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/C8_1
zcat ../H201SC19030217/raw_data/C8_2.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/C8_2
zcat ../H201SC19030217/raw_data/C9_1.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/C9_1
zcat ../H201SC19030217/raw_data/C9_2.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/C9_2
zcat ../H201SC19030217/raw_data/N1_1.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/N1_1
zcat ../H201SC19030217/raw_data/N1_2.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/N1_2
zcat ../H201SC19030217/raw_data/N2_1.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/N2_1
zcat ../H201SC19030217/raw_data/N2_2.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/N2_2
zcat ../H201SC19030217/raw_data/N3_1.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/N3_1
zcat ../H201SC19030217/raw_data/N3_2.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/N3_2
zcat ../H201SC19030217/raw_data/S10_1.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/S10_1
zcat ../H201SC19030217/raw_data/S10_2.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/S10_2
zcat ../H201SC19030217/raw_data/S11_1.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/S11_1
zcat ../H201SC19030217/raw_data/S11_2.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/S11_2
zcat ../H201SC19030217/raw_data/S12_1.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/S12_1
zcat ../H201SC19030217/raw_data/S12_2.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/S12_2
zcat ../H201SC19030217/raw_data/W4_1.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/W4_1
zcat ../H201SC19030217/raw_data/W4_2.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/W4_2
zcat ../H201SC19030217/raw_data/W5_1.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/W5_1
zcat ../H201SC19030217/raw_data/W5_2.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/W5_2
zcat ../H201SC19030217/raw_data/W6_1.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/W6_1
zcat ../H201SC19030217/raw_data/W6_2.fq.gz  | fastqc stdin --outdir=fastQC_raw/E.festucae_Fl1/W6_2
