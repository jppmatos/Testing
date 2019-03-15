#Set OS
FROM continuumio/miniconda3:4.5.12

RUN apt-get update && apt-get upgrade -y


# Install java language
RUN apt-get install -y openjdk-8-jre       


#Bioconda settup:
#Add the bioconda channel:
RUN conda config --add channels defaults
RUN conda config --add channels bioconda
RUN conda config --add channels conda-forge

#Install snakemake(pipeline manager):
RUN conda install snakemake -y

#Install Tools:
RUN conda install bwa -y
RUN conda install samtools -y
RUN conda install fastqc -y
RUN conda install bcftools -y



