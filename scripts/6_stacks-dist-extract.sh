#!/bin/bash

#########################################################################
# This script will run the stacks pipeline as described in:
# http://catchenlab.life.illinois.edu/stacks/manual/#popmap
#########################################################################
cd ../stacks.denovo/
stacks-dist-extract gstacks.log.distribs effective_coverages_per_sample \
  &> gstacks.effective_coverages_per_sample.tsv
stacks-dist-extract gstacks.log.distribs phasing_rates_per_sample \
  &> gstacks.phasing_rates_per_sample.tsv
stacks-dist-extract gstacks.log.distribs clockings \
  &> gstacks.clockings.tsv

cd ./stacks.output_b30/
stacks-dist-extract populations.log.distribs batch_progress \
  &> populations.batch_progress.tsv
stacks-dist-extract populations.log.distribs samples_per_loc_prefilters \
  &> populations.samples_per_loc_prefilters.tsv
stacks-dist-extract populations.log.distribs missing_samples_per_loc_prefilters \
  &> populations.missing_samples_per_loc_prefilters.tsv
stacks-dist-extract populations.log.distribs snps_per_loc_prefilters \
  &> populations.snps_per_loc_prefilters.tsv
stacks-dist-extract populations.log.distribs samples_per_loc_postfilters \
  &> populations.samples_per_loc_postfilters.tsv
stacks-dist-extract populations.log.distribs missing_samples_per_loc_postfilters \
  &> populations.missing_samples_per_loc_postfilters.tsv
stacks-dist-extract populations.log.distribs snps_per_loc_postfilters \
  &> populations.snps_per_loc_postfilters.tsv
