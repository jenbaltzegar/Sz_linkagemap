#! /bin/bash

#trimming out adapter and primer sequences

# change directory
cd ../raw/lane1

#make output directory and subdirectories
mkdir trimmed
mkdir trimmed/index1
mkdir trimmed/index2
mkdir trimmed/index4
mkdir trimmed/index6
mkdir trimmed/index12

# Create function to run trimmomatic - removes adapter sequences - for all indices
function run_trimmomatic {
	local index=$1	# index name is given as an argument to the function
	local seq_file=$2	# sequence file is given as an argument to the function
	local adapters=../../info/TruSeq3-SE.fa
	java -jar ~/src/Trimmomatic-0.39/trimmomatic-0.39.jar SE -threads 10 -phred33 -trimlog \
		trimmed/$index/trimlog.log $seq_file trimmed/$index/$seq_file.trimmed.fq.gz \
		ILLUMINACLIP:$adapters:2:30:10
}
export -f run_trimmomatic

# Remove adapter sequences for each index
# call function as: run_trimmomatic $index $seq_file
run_trimmomatic index1 1_Gould_Idx1_S18_L004_R1_001.fastq.gz
run_trimmomatic index2 2_Gould_Idx2_S19_L004_R1_001.fastq.gz
run_trimmomatic index4 3_Gould_Idx4_S20_L004_R1_001.fastq.gz
run_trimmomatic index6 4_Gould_Idx6_S21_L004_R1_001.fastq.gz
run_trimmomatic index12 5_Gould_Idx12_S22_L004_R1_001.fastq.gz


#Verify trimming by running FastQC again
