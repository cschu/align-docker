FROM ubuntu:26.04

LABEL maintainer="cschu1981@gmail.com"
LABEL version="0.5.0"
LABEL description="This is a Docker Image for an alignment workflow composed of bwa/minimap2 and samtools"


ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y wget python3-pip git gawk bwa minimap2 samtools
RUN apt-get clean
