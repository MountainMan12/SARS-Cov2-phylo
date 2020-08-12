#!/usr/bin/env bash

# Aligning the sequences
echo "Extracting batch sequences from the SARS-CoV2 dataset"

python getseq.py

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
