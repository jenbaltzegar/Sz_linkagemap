#!bin/bash
# This is the code to create the vectorial image linkage map
# This code requires the pearl genetic_mapper.pl to be installed
# see github.com/pseudogene/genetic-mapper for source code
# Suggested code from developer
# compact (stylish)
# ./genetic_mapper.pl --var --compact --plot --map=map.tsv > lg.svg
# classic publication style
# ./genetic_mapper.pl --pos --chr=13 --map=map.tsv > lg.svg

# Change directory
#cd ~/Users/jenbaltz/Dropbox/GouldLab/Project_Weevil/LinkageMap
#cd ~/home/megan/temp_JenB/scripts

# Run "stylish" code suggested by developer
./genetic_mapper.pl --var --compact --plot --map=Sz_LinkageMap_LOD11.tsv > Sz_LinkageMap_stylish.svg
# open Sz_LinkageMap_stylish.svg

# Run "classic" code suggested by developer
./genetic_mapper.pl --pos --map=Sz_LinkageMap_LOD11.tsv > Sz_LinkageMap_classic.svg
# open Sz_LinkageMap_classic.svg

# Run different sets of parameters
# v1
./genetic_mapper.pl --pos --compact --plot --map=Sz_LinkageMap_LOD11.tsv > Sz_LinkageMap_LOD11_v1.svg
# open Sz_LinkageMap_LOD11_v1.svg

# v2
./genetic_mapper.pl --pos --bar --map=Sz_LinkageMap_LOD11.tsv > Sz_LinkageMap_LOD11_v2.svg
# open Sz_LinkageMap_LOD11_v2.svg

# v3
./genetic_mapper.pl --pos --compact --map=Sz_LinkageMap_LOD11.tsv > Sz_LinkageMap_LOD11_v3.svg
# open Sz_LinkageMap_LOD11_v3.svg

# v4 - my fav
./genetic_mapper.pl --compact --map=Sz_LinkageMap_LOD11.tsv > Sz_LinkageMap_LOD11_v4.svg
# open Sz_LinkageMap_LOD11_v4.svg

# v5
./genetic_mapper.pl --compact --horizontal --map=Sz_LinkageMap_LOD11.tsv > Sz_LinkageMap_LOD11_v5.svg
# open Sz_LinkageMap_LOD11_v5.svg

# v6
./genetic_mapper.pl --compact --verbose --map=Sz_LinkageMap_LOD11.tsv > Sz_LinkageMap_LOD11_v6.svg
# open Sz_LinkageMap_LOD11_v6.svg
