# Salmon mapping and read count quantification
# make sure Salmon software is in the PATH

#!/usr/bin/env bash
source /home/kate/.bash_profile

#
mkdir salmon_quant

# Salmon usage
# build an indices of the transcriptomes
# -k 31 suggested for reads over 75bp
salmon index -t transcriptome/E.elymi_NfE728/Epichloe_elymi_NfE728.transcripts.fa -i transcriptome/E.elymi/E.elymi_NfE728.trans_index -k 31
salmon index -t transcriptome/E.festucae_E2368/Epichloe_festucae_E2368.transcripts.fa -i transcriptome/E.festucae/E.festucae_E2368.trans_index -k 31
salmon index -t transcriptome/E.typhina_E8/Epichloe_typhina_E8.transcripts.fa -i transcriptome/E.typhina_E8/E.typhina_E8.trans_index -k 31


# grab headers from transriptome files for use in mapping transcripts to genes later
for i in transcriptome/*; do grep '>' $i/*.fa > $i/transcriptome.headers.txt; sed -i s'/>//g' $i/transcriptome.headers.txt; done

##########  QUANT OPTION (quasi-mapping and counting)
# -l U for single-end (unstranded) librarytype
# -r for SE fq file
# --validateMappings makes mapping more sensitive
# --seqBias corrects for random hexamer bias in pcr priming
# --gcBias
# --posBias enables modeling of a position-specific fragment start distribution (bias from position in read)
# --writeUnmappedNames   # this takes up loads of space - skip it

mkdir salmon_quant/L.perenne
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/C7_1.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/C7_1
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/C7_2.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/C7_2
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/C8_1.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/C8_1
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/C8_2.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/C8_2
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/C9_1.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/C9_1
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/C9_2.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/C9_2
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/N1_1.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/N1_1
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/N1_2.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/N1_2
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/N2_1.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/N2_1
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/N2_2.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/N2_2
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/N3_1.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/N3_1
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/N3_2.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/N3_2
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/S10_1.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/S10_1
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/S10_2.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/S10_2
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/S11_1.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/S11_1
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/S11_2.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/S11_2
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/S12_1.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/S12_1
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/S12_2.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/S12_2
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/W4_1.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/W4_1
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/W4_2.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/W4_2
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/W5_1.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/W5_1
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/W5_2.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/W5_2
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/W6_1.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/W6_1
salmon quant -p 8 -i transcriptome/L.perenne/L.perenne.trans_index -l U -r <(zcat ../1_QC/trimmed/L.perenne/W6_2.trim.fastq) --validateMappings --seqBias --gcBias --posBias -o salmon_quant/L.perenne/W6_2
