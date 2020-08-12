#!/bin/bash

sudo apt install curl

# WE WILL KEEP IT CLEAN AND MAKE A NEW FOLDER
mkdir sars
cd sars/
#download for Mac
curl -o datasets 'https://ftp.ncbi.nlm.nih.gov/pub/datasets/command-line/LATEST/mac/datasets'

#download for linux (If you are a linux user comment out the above line)
#curl -o datasets 'https://ftp.ncbi.nlm.nih.gov/pub/datasets/command-line/LATEST/linux-amd64/datasets' 

chmod +x datasets  #Give permission to access the datasets module

#Download complete genomic data for Human Coronavirus
./datasets download virus genome tax-name SARS2 --host human --filename SARS2-all.zip

unzip SARS2-all.zip

#Run phylo.sh for analysis


