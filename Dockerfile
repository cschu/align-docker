FROM ubuntu:26.04

LABEL maintainer="cschu1981@gmail.com"
LABEL version="0.6.0"
LABEL description="This is a Docker Image containing various aligners + samtools"


ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y locales wget python3-pip git gawk bwa minimap2 samtools bowtie2 hisat2 python3-hisat2 kraken2 seqtk
RUN apt-get clean

RUN locale-gen en_US en_US.UTF-8 && dpkg-reconfigure locales

# hack hisat2 default tmpdir
RUN sed -i 's:"/tmp":"\$ENV{TMPDIR}":g' /usr/bin/hisat2

