# Salmon mapping and read count quantification

#!/usr/bin/env bash

# make sure Salmon software is in the PATH
source /home/kate/.bash_profile

#
mkdir salmon_quant

# Salmon usage
# build an indices of the transcriptomes
# -k 31 suggested for reads over 75bp
salmon index -t transcriptome/E.festucae_Fl1/E.festucae_Fl1.transcripts_v3.fa -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -k 31

##########  QUANT OPTION (quasi-mapping and counting)
# -l U for single-end (unstranded) librarytype
# -r for SE fq file
# --validateMappings makes mapping more sensitive
# --seqBias corrects for random hexamer bias in pcr priming
# --gcBias
# --posBias enables modeling of a position-specific fragment start distribution (bias from position in read)
# --writeUnmappedNames   # this takes up loads of space - skip it

mkdir salmon_quant/E.festucae_Fl1
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/C7_1.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/C7_1
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/C7_2.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/C7_2
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/C8_1.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/C8_1
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/C8_2.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/C8_2
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/C9_1.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/C9_1
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/C9_2.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/C9_2
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/N1_1.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/N1_1
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/N1_2.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/N1_2
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/N2_1.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/N2_1
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/N2_2.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/N2_2
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/N3_1.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/N3_1
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/N3_2.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/N3_2
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/S10_1.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/S10_1
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/S10_2.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/S10_2
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/S11_1.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/S11_1
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/S11_2.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/S11_2
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/S12_1.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/S12_1
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/S12_2.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/S12_2
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/W4_1.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/W4_1
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/W4_2.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/W4_2
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/W5_1.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/W5_1
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/W5_2.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/W5_2
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/W6_1.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/W6_1
salmon quant -p 8 -i transcriptome/E.festucae_Fl1/E.festucae_Fl1.trans_index -l U -r <(zcat ../../Yonathan/1_QC/trimmed/E.festucae_Fl1/W6_2.trim.fq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/E.festucae_Fl1/W6_2
