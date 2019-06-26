# requires sra-toolkit to download files from NCBI sra database
#sudo apt install sra-toolkit

mkdir run_1 run_1/Lane1
cd run_1/Lane1

# get data from NCBI for wt Epichloe festucae Fl1 in axenic culture (
fastq-dump SRR7640306
fastq-dump SRR7640308
fastq-dump SRR7640309
cd ../../

mkdir 

# get data from NCBI for wt Epichloe festucae Fl1 in planta (3 days after innoculation).
