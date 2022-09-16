#! /bin/bash

# This is code to run the FastQC program and to create report using multiqc

# set working directory
cd ../raw/lane1/trimmed

# make new directories for output
mkdir ../../../info/quality.control/FastQC_output_afterTrimming
mkdir ../../../info/quality.control/MultiQC_output_afterTrimming

# create variables for output
output1=../../../info/quality.control/FastQC_output_afterTrimming
output2=../../../info/quality.control/MultiQC_output_afterTrimming

# Run fastqc on files
for file in */*.fq.gz
do
fastqc -f fastq -o $output1 $file
done

# Create report using multiqc
multiqc ../../../info/quality.control/FastQC_output_afterTrimming \
  --force -o $output2 --export
