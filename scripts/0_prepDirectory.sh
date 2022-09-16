#! /bin/bash

######################################################################
######################################################################
# Prepare directory for analysis
######################################################################
######################################################################
# Create a directory for the analysis, and subdirectories.
# Write text files containing the barcodes (in info/).
# Write text files specifying the populations (in info/).

######################################################################
# Make subdirectories for jfbaltz_lib2
######################################################################
cd ..

mkdir alignments
mkdir cleaned
mkdir extra
mkdir genome
mkdir info
mkdir info/barcodes
mkdir info/popmaps
mkdir raw
mkdir stacks.denovo
mkdir stacks.ref
mkdir tests.denovo
mkdir tests.ref

#######################################################################
echo "Preparing sequencing files"
#######################################################################
mkdir ./raw/lane1
mv ./raw/*.gz ./raw/lane1

#######################################################################
echo "Gathering adapter sequence files (in info/)"
#######################################################################
cp ~/Trimmomatic-0.39/adapters/TruSeq3-SE.fa ./info/TruSeq3-SE.fa

######################################################################
echo "Writing text files containing the barcodes (in info/)."
######################################################################
cd ./info/barcodes

# for index 1
printf "\
CGCGGT	Sz_spm_gpm_1
CTATTA	Sz_spm_gpf_1
GCCAGT	Sz_spm_pm_1
GGAAGA	Sz_spm_pf_1
GTACTT	Sz_offsp_1
GTTGAA	Sz_offsp_2
TAACGA	Sz_offsp_3
TGGCTA	Sz_offsp_4
TGCAAGGA	Sz_offsp_5
TGGTACGT	Sz_offsp_6
TCTCAGTC	Sz_offsp_7
CCGGATAT	Sz_offsp_8
CGCCTTAT	Sz_offsp_9
AACCGAGA	Sz_offsp_10
ACAGGGAA	Sz_offsp_11
ACGTGGTA	Sz_offsp_12
CCATGGGT	Sz_offsp_13
CGCGGAGA	Sz_offsp_14
CGTGTGGT	Sz_offsp_15
GCTGTGGA	Sz_offsp_16
GGATTGGT	Sz_offsp_17
GTGAGGGT	Sz_offsp_18
TATCGGGA	Sz_offsp_19
TTCCTGGA	Sz_offsp_20
" > ./barcodes.index1.tsv

# for index 2
printf "\
CGCGGT	Sz_offsp_21
CTATTA	Sz_offsp_22
GCCAGT	Sz_offsp_23
GGAAGA	Sz_offsp_24
GTACTT	Sz_offsp_25
GTTGAA	Sz_offsp_26
TAACGA	Sz_offsp_27
TGGCTA	Sz_offsp_28
TGCAAGGA	Sz_offsp_29
TGGTACGT	Sz_offsp_30
TCTCAGTC	Sz_offsp_31
CCGGATAT	Sz_offsp_32
CGCCTTAT	Sz_offsp_33
AACCGAGA	Sz_offsp_34
ACAGGGAA	Sz_offsp_35
ACGTGGTA	Sz_offsp_36
CCATGGGT	Sz_offsp_37
CGCGGAGA	Sz_offsp_38
CGTGTGGT	Sz_offsp_39
GCTGTGGA	Sz_offsp_40
GGATTGGT	Sz_offsp_41
GTGAGGGT	Sz_offsp_42
TATCGGGA	Sz_offsp_43
TTCCTGGA	Sz_offsp_44
" > ./barcodes.index2.tsv

# for index 4
printf "\
CGCGGT	Sz_offsp_45
CTATTA	Sz_offsp_46
GCCAGT	Sz_offsp_47
GGAAGA	Sz_offsp_48
GTACTT	Sz_offsp_49
GTTGAA	Sz_offsp_50
TAACGA	Sz_offsp_51
TGGCTA	Sz_offsp_52
TGCAAGGA	Sz_offsp_53
TGGTACGT	Sz_offsp_54
TCTCAGTC	Sz_offsp_55
CCGGATAT	Sz_offsp_56
CGCCTTAT	Sz_offsp_57
AACCGAGA	Sz_offsp_58
ACAGGGAA	Sz_offsp_59
ACGTGGTA	Sz_offsp_60
CCATGGGT	Sz_offsp_61
CGCGGAGA	Sz_offsp_62
CGTGTGGT	Sz_offsp_63
GCTGTGGA	Sz_offsp_64
GGATTGGT	Sz_offsp_65
GTGAGGGT	Sz_offsp_66
TATCGGGA	Sz_offsp_67
TTCCTGGA	Sz_offsp_68
" > ./barcodes.index4.tsv

# for index 6
printf "\
CGCGGT	Sz_offsp_69
CTATTA	Sz_offsp_70
GCCAGT	Sz_offsp_71
GGAAGA	Sz_offsp_72
GTACTT	Sz_offsp_73
GTTGAA	Sz_offsp_74
TAACGA	Sz_offsp_75
TGGCTA	Sz_offsp_76
TGCAAGGA	Sz_offsp_77
TGGTACGT	Sz_offsp_78
TCTCAGTC	Sz_offsp_79
CCGGATAT	Sz_offsp_80
CGCCTTAT	Sz_offsp_81
AACCGAGA	Sz_offsp_82
ACAGGGAA	Sz_offsp_83
ACGTGGTA	Sz_offsp_84
CCATGGGT	Sz_offsp_85
CGCGGAGA	Sz_offsp_86
CGTGTGGT	Sz_offsp_87
GCTGTGGA	Sz_offsp_88
GGATTGGT	Sz_offsp_89
GTGAGGGT	Sz_offsp_90
TATCGGGA	Sz_offsp_91
TTCCTGGA	Sz_offsp_92
" > ./barcodes.index6.tsv

# for index 12
printf "\
CGCGGT	Sz_offsp_93
CTATTA	Sz_offsp_94
GCCAGT	Sz_offsp_95
GGAAGA	Sz_offsp_96
GTACTT	Sz_offsp_97
GTTGAA	Sz_offsp_98
TAACGA	Sz_offsp_99
TGGCTA	Sz_offsp_100
TGCAAGGA	Sz_offsp_101
TGGTACGT	Sz_offsp_102
TCTCAGTC	Sz_offsp_103
CCGGATAT	Sz_offsp_104
CGCCTTAT	Sz_offsp_105
AACCGAGA	Sz_offsp_106
ACAGGGAA	Sz_offsp_107
ACGTGGTA	Sz_offsp_108
CCATGGGT	Sz_spm_gpm_2
CGCGGAGA	Sz_spm_gpf_2
CGTGTGGT	Sz_spm_pm_2
GCTGTGGA	Sz_spm_pf_2
" > ./barcodes.index12.tsv


######################################################################
echo "Writing a text file specifying the populations (in info/)."
######################################################################
cd ../popmaps

# for parents
printf "\
Sz_spm_pm_cat	parent
Sz_spm_pf_cat	parent
" > ./popmap_parents.tsv

# for all
printf "\
Sz_spm_pm_cat	parent
Sz_spm_pf_cat	parent
Sz_offsp_1	progeny
Sz_offsp_2	progeny
Sz_offsp_3	progeny
Sz_offsp_4	progeny
Sz_offsp_5	progeny
Sz_offsp_6	progeny
Sz_offsp_7	progeny
Sz_offsp_8	progeny
Sz_offsp_9	progeny
Sz_offsp_10	progeny
Sz_offsp_11	progeny
Sz_offsp_12	progeny
Sz_offsp_13	progeny
Sz_offsp_14	progeny
Sz_offsp_15	progeny
Sz_offsp_16	progeny
Sz_offsp_17	progeny
Sz_offsp_18	progeny
Sz_offsp_19	progeny
Sz_offsp_20	progeny
Sz_offsp_21	progeny
Sz_offsp_22	progeny
Sz_offsp_23	progeny
Sz_offsp_24	progeny
Sz_offsp_25	progeny
Sz_offsp_26	progeny
Sz_offsp_27	progeny
Sz_offsp_28	progeny
Sz_offsp_29	progeny
Sz_offsp_30	progeny
Sz_offsp_31	progeny
Sz_offsp_32	progeny
Sz_offsp_33	progeny
Sz_offsp_34	progeny
Sz_offsp_35	progeny
Sz_offsp_36	progeny
Sz_offsp_37	progeny
Sz_offsp_38	progeny
Sz_offsp_39	progeny
Sz_offsp_40	progeny
Sz_offsp_41	progeny
Sz_offsp_42	progeny
Sz_offsp_43	progeny
Sz_offsp_44	progeny
Sz_offsp_45	progeny
Sz_offsp_46	progeny
Sz_offsp_47	progeny
Sz_offsp_48	progeny
Sz_offsp_49	progeny
Sz_offsp_50	progeny
Sz_offsp_51	progeny
Sz_offsp_52	progeny
Sz_offsp_53	progeny
Sz_offsp_54	progeny
Sz_offsp_55	progeny
Sz_offsp_56	progeny
Sz_offsp_57	progeny
Sz_offsp_58	progeny
Sz_offsp_59	progeny
Sz_offsp_60	progeny
Sz_offsp_61	progeny
Sz_offsp_62	progeny
Sz_offsp_63	progeny
Sz_offsp_64	progeny
Sz_offsp_65	progeny
Sz_offsp_66	progeny
Sz_offsp_67	progeny
Sz_offsp_68	progeny
Sz_offsp_69	progeny
Sz_offsp_70	progeny
Sz_offsp_71	progeny
Sz_offsp_72	progeny
Sz_offsp_73	progeny
Sz_offsp_74	progeny
Sz_offsp_75	progeny
Sz_offsp_76	progeny
Sz_offsp_77	progeny
Sz_offsp_78	progeny
Sz_offsp_79	progeny
Sz_offsp_80	progeny
Sz_offsp_81	progeny
Sz_offsp_82	progeny
Sz_offsp_83	progeny
Sz_offsp_84	progeny
Sz_offsp_85	progeny
Sz_offsp_86	progeny
Sz_offsp_87	progeny
Sz_offsp_88	progeny
Sz_offsp_89	progeny
Sz_offsp_90	progeny
Sz_offsp_91	progeny
Sz_offsp_92	progeny
Sz_offsp_93	progeny
Sz_offsp_94	progeny
Sz_offsp_95	progeny
Sz_offsp_96	progeny
Sz_offsp_97	progeny
Sz_offsp_98	progeny
Sz_offsp_99	progeny
Sz_offsp_100	progeny
Sz_offsp_101	progeny
Sz_offsp_102	progeny
Sz_offsp_103	progeny
Sz_offsp_104	progeny
Sz_offsp_105	progeny
Sz_offsp_106	progeny
Sz_offsp_107	progeny
Sz_offsp_108	progeny
" > ./popmap_all.tsv
