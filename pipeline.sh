#!/bin/bash

sudo apt install curl

#-------------1. DATA DOWNLOAD -------------------------

# WE WILL KEEP IT CLEAN AND MAKE A NEW FOLDER
mkdir sars
cd sars/
#download for Mac (If you are a MacOS user comment out the below command)
#curl -o datasets 'https://ftp.ncbi.nlm.nih.gov/pub/datasets/command-line/LATEST/mac/datasets'

#download for linux (If you are a linux user comment out the above line)
curl -o datasets 'https://ftp.ncbi.nlm.nih.gov/pub/datasets/command-line/LATEST/linux-amd64/datasets' 

chmod +x datasets  #Give permission to access the datasets module

#Download complete genomic data for Human Coronavirus
./datasets download virus genome tax-name SARS2 --host human --filename SARS2-all.zip

unzip SARS2-all.zip

#-------------2. DATA EXTRACTION -------------------------

#Extract batch data
echo "Extracting batch sequences from the SARS-CoV2 dataset"

python getseq.py

cd ..

#-------------3. ANALYSIS -------------------------

echo "aligning sequences using MAFFT" 

mafft --auto --reorder --maxiterate 1000 sequence.fasta  > seqalign.fasta

# Viewing the alignment on jalview
#echo "Viewing the alignment"

#jalview seqalign.fasta

# constructing a phylogenetic tree
echo "constructing a phylogenetic tree using iqtree"

iqtree -s seqalign.fasta -nt AUTO  -m TEST -bb 1000

# opening the constructed tree
echo "opening the tree file"

figtree *.treefile


