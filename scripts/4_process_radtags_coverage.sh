#! /bin/bash

#######################################
# This script will run process radtags
# and check the per sample coverage
#######################################

# change directory
cd ../cleaned/

# make output directories
mkdir index1
mkdir index2
mkdir index4
mkdir index6
mkdir index12

#################################
# Clean & demultiplex the data
#################################


# Create function to run process_radtags for all indices
function run_process_radtags {
	index=$1 # lane name is given as an argument to the function
	process_radtags -f ../raw/lane1/trimmed/$index/*.fq.gz -b ../info/barcodes/*$index.tsv \
		-o ./$index --renz_1 ecoRI --renz_2 mspI --inline_null -c -q -r -t 115 -D \
		-i gzfastq &> ./$index/process_radtags.$index.oe
}
export -f run_process_radtags

# Run the function
for index in index1 index2 index4 index6 index12 ;do
	echo "Processing $index..."
	run_process_radtags $index
done


#################################
# Check the per-sample coverages.
#################################

# Extract the number of reads from the log of process_radtags.
header='#sample\tn_reads'
for index in index1 index2 index4 index6 index12 ;do

	# Retrieve the part of the log between 'Barcode...' and the next empty line,
	# then discard the first and last lines and keep the 2nd and 6th columns.
	sed -n '/^Barcode\tFilename\t/,/^$/ p' ./$index/process_radtags.$index.log \
		| sed '1 d; $ d' | cut -f2,6

# Write the numbers to a file, adding a header line with sed
done | sed "1 i $header" > ../info/n_reads_per_sample.tsv

# Plot these numbers.
echo "Plotting per-sample coverage..."
cd ../scripts/R_scripts/
./plot_n_reads_per_sample.R
