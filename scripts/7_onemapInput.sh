#!/bin/bash

# This file will setup the file to run onemap in R

echo "Prepping onemap input file..."
cd ../scripts/R_scripts/
./run_filterOneMapMarkers.R


cd ../../stacks.denovo/stacks.output_b30

echo "Concatenating two files..."
cat ./firstRow.onemap.csv ./filtered.markers.p0.05.n95.csv \
  > input.onemap.csv
# delete extra lines in file
sed -i '1d' input.onemap.csv
sed -i '2d' input.onemap.csv
