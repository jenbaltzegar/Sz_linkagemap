#!/bin/bash

#########################################################################
# This script will run the stacks pipeline as described in:
# http://catchenlab.life.illinois.edu/stacks/manual/#popmap
# Section 4.4.3 De novo Genetic Mapping Cross
#########################################################################
cd ../cleaned

###############################
echo "Initializing script..."
###############################
# loop through subdirectoris to cp files from index subdirectories to cleaned
for index in 1 2 4 6 12; do
	cd ./index$index
	for file in *.fq.gz; do
		cp -i "$file" "../$file"
	done
	cd ../
done

# concatenate reads for two parents
cat Sz_spm_pm_1.fq.gz Sz_spm_pm_2.fq.gz > Sz_spm_pm_cat.fq.gz
cat Sz_spm_pf_1.fq.gz Sz_spm_pf_2.fq.gz > Sz_spm_pf_cat.fq.gz

###############################
echo "Analyzing all data for stacks.denovo"
###############################
cd ../stacks.denovo
mkdir ./stacks.output_b30

export M=5
export n=$M
export m=3
export threads=10


################################
echo "Running ustacks on all samples..."
################################
# Create function to run ustacks
function run_ustacks {
	sample=$1 # sample name and index are given as arguments to the function
	index=$2
	fqfile=../cleaned/$sample.fq.gz
	logfile=$sample.ustacks.oe
	ustacks -f $fqfile -i $index -o ./ -M $M -m $m -p $threads \
	--max_locus_stacks 2 -d -r &> $logfile
}
export -f run_ustacks

# Run the function
index=1
for sample in $(cut -f1 ../info/popmaps/popmap_all.tsv); do
	run_ustacks $sample $index
	index=$((index+1))
done


###############################
echo "Building the catalog from parents..."
###############################
cstacks -P ./ -M ../info/popmaps/popmap_parents.tsv \
	-n $n -p $threads &> cstacks.oe


###############################
echo "Running sstacks on all samples..."
# Match all samples supplied in the population map against the catalog.
###############################
sstacks -P ./ -M ../info/popmaps/popmap_all.tsv \
	-p $threads &> sstacks.oe


###############################
echo "Transposing the data..."
# so it is stored by locus, instead of by sample.
###############################
tsv2bam -P ./ -M ../info/popmaps/popmap_all.tsv -t $threads


###############################
echo "Running gstacks on all samples..."
# align reads per sample, call variant sites
# in the population, genotypes in each individual.
###############################
gstacks -P ./ -M ../info/popmaps/popmap_all.tsv \
	-t $threads &> gstacks.oe


###############################
echo "Running populations..."
# generating the mapping genotypes for an F1 outcross, AKA a 'CP' cross.
# And export mappable markers for the onemap linkage mapper.
###############################
populations -P ./ -M ../info/popmaps/popmap_all.tsv \
	--out-path ./stacks.output_b30 -t $threads -H -r 0.8 \
	--fasta-loci --map-type cp --map-format onemap \
	&> ./stacks.output_b30/populations.oe
