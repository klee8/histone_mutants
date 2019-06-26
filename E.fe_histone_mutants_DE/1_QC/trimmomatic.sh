# trim reads including adapters

#!/usr/bin/env bash
source /home/kate/.bash_profile

# Trim data

# - trimlog records readname and lengths before and after trimming
#ILLUMINACLIP:TruSeq2-PE.fa:2:30:10   <fastaWithAdaptersEtc>:<seed mismatches>:<palindrome clip threshold>:<simple clip threshold>
#SLIDINGWINDOW:5:20   <windowSize>:<requiredQuality>
#LEADING:5         removes low quality bases from the start of a read
#TRAILING:5        removes low quality bases from the end of a read
#MINLEN:40         removes reads shorter than this
# note: stopped outputting the trimlog, I don't use it and it takes up a LOT of space.
# note: stdin was overwriting itself in the fastqc_raw/species output directory - added run as an extra folder in the path
mkdir trimmed

mkdir trimmed/E.festucae_Fl1 trimmed/E.festucae_Fl1/logs
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/C7_1.fq.gz trimmed/E.festucae_Fl1/C7_1.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/C7_2.fq.gz trimmed/E.festucae_Fl1/C7_2.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/C8_1.fq.gz trimmed/E.festucae_Fl1/C8_1.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/C8_2.fq.gz trimmed/E.festucae_Fl1/C8_2.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/C9_1.fq.gz trimmed/E.festucae_Fl1/C9_1.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/C9_2.fq.gz trimmed/E.festucae_Fl1/C9_2.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/N1_1.fq.gz trimmed/E.festucae_Fl1/N1_1.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/N1_2.fq.gz trimmed/E.festucae_Fl1/N1_2.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/N2_1.fq.gz trimmed/E.festucae_Fl1/N2_1.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/N2_2.fq.gz trimmed/E.festucae_Fl1/N2_2.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/N3_1.fq.gz trimmed/E.festucae_Fl1/N3_1.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/N3_2.fq.gz trimmed/E.festucae_Fl1/N3_2.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/S10_1.fq.gz trimmed/E.festucae_Fl1/S10_1.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/S10_2.fq.gz trimmed/E.festucae_Fl1/S10_2.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/S11_1.fq.gz trimmed/E.festucae_Fl1/S11_1.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/S11_2.fq.gz trimmed/E.festucae_Fl1/S11_2.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/S12_1.fq.gz trimmed/E.festucae_Fl1/S12_1.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/S12_2.fq.gz trimmed/E.festucae_Fl1/S12_2.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/W4_1.fq.gz trimmed/E.festucae_Fl1/W4_1.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/W4_2.fq.gz trimmed/E.festucae_Fl1/W4_2.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/W5_1.fq.gz trimmed/E.festucae_Fl1/W5_1.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/W5_2.fq.gz trimmed/E.festucae_Fl1/W5_2.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/W6_1.fq.gz trimmed/E.festucae_Fl1/W6_1.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
java -jar /home/kate/bin/Trimmomatic-0.38/trimmomatic-0.38.jar SE -threads 4 ../H201SC19030217/raw_data/W6_2.fq.gz trimmed/E.festucae_Fl1/W6_2.trim.fq.gz ILLUMINACLIP:/home/kate/bin/Trimmomatic-0.38/adapters/TruSeq3-SE.fa:2:30:10 SLIDINGWINDOW:5:20 LEADING:5 TRAILING:5 MINLEN:40
