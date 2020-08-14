# Phylogenetic analysis of SARS-COV-2 from selected countries to determine the epidemiological transmission of the virus

## Preparation before running the pipeline

We need to check for avaliablility of important software packages before we run the analysis

- Java: Open command line environment and type <br/>

<code> java --version </code> <br/>
  
If version is displayed, then your system contains java. Keep in mind that the software packages would run best using the javac 11.0.8 <br/>

<code> openjdk 11.0.8 2020-07-14 </code> <br/>
<code> OpenJDK Runtime Environment (build 11.0.8+10-post-Ubuntu-0ubuntu120.04) </code> <br/>
<code> OpenJDK 64-Bit Server VM (build 11.0.8+10-post-Ubuntu-0ubuntu120.04, mixed mode, sharing) </code>

If java is not found, install using command line <br/>

<code> sudo apt-get update </code> <br/>
<code> sudo apt-get install default-jre </code>

- curl: To check whether curl is installed 

<code> curl --version </code>

If version information is not displayed, install curl using <br/>

<code> sudo apt-get install curl </code>

- Miniconda3: A bootstrap version of Anaconda for python packages, to check if conda is installed

<code> conda -V </code>

If version information is not displayed, then install (for a 64-bit system)

<code> wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh </code> <br/>
<code> sh Miniconda3-latest-Linux-x86_64.sh </code>

Follow on-screen instructions until the installation is complete
### NOTE: When asked to add conda_init , enter YES

Add conda to PATH environment

<code> source ~/.bashrc </code>

- BioPython: Package for running bioinformatics data analysis

To check if biopython is installed, run

<code> pip list | grep biopython </code><br/>

If version is not returned, install using,

<code> pip install biopython </code>

## Instructions for running the pipeline

### STEP 1: Installation of software packages using conda 

We will be installing the following software packages in our environment to run the pipeline.
Version info. is also displayed which was used to run this pipelime

- MAFFT v7.471 (2020/Jul/3)
- iqtree (multicore version 2.0.3 for Linux 64-bit built Apr 26 2020)
- jalview (2.11.1.0)
- figtree (v1.4.4)

We will add the specific channels to our conda environment before installation, and install packages using a single bash script

<code> bash packages.sh </code>

### STEP 2: Running the final pipeline

Once all packages are installed the pipeline can be executed using the bash script

<code> bash pipeline.sh </code>

The code working has been described in the documented version of the project

### Acknowledgements
- Winfred Gatua (Kenya)
- Pawan Verma (India)
- Harinath. S (India)
- Ahmed El-Gammal (Egypt)
- Caroline Vilas Boas De Melo (Brazil)
- Maruf Ahmed Bhuiyan (Bangladesh)
- Oluwasefunmi Shodunke (Nigeria)
- Peter Josiah Aminu (Nigeria)
- Tracy-Allen Ezechukwu (Nigeria)

### Contact:
Pawan Verma <br/>
Email: pawan12394@gmail.com <br/>
Twitter: @VP_312

