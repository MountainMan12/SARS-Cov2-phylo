#The linux commands for installing the required packages for the task on Ubuntu platform
#To make things easier and more organised we will use the conda package manager

#If you already have conda installed comment out the installation line before running. It would require all operating systems to be 64-bit

#wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
#sh Miniconda3-latest-Linux-x86_64.sh

#Follow the on-screen instructions for finishing installation

#source ~/.bashrc #will add conda to PATH

#Adding the required channels to conda for seamless installation
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge

# Now we will install the required packages

conda install iqtree
conda install mafft
conda install jalview
conda install figtree

