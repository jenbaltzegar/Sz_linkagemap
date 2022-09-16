#! /bin/bash

# This is code to run the FastQC program and to create report using multiqc

# set working directory
cd ../raw/lane1

# make new directory for output
mkdir ../../info/quality.control
mkdir ../../info/quality.control/FastQC_output_beforeTrimming
mkdir ../../info/quality.control/MultiQC_output_beforeTrimming

# create variables for output
output1=../../info/quality.control/FastQC_output_beforeTrimming
output2=../../info/quality.control/MultiQC_output_beforeTrimming

# Run fastqc on files
for file in *.fastq.gz
do
fastqc -f fastq -o $output1 $file
done

# Create report using multiqc
multiqc ../../info/quality.control/FastQC_output_beforeTrimming \
  --force -o $output2 --export
