FROM continuumio/miniconda3:4.5.11

MAINTAINER pughdr <david.pugh@kaust.edu.sa>

# configure the environment vars
ENV HOME /home

# build and activate the conda environment
ARG CONDA_ENVIRONMENT
COPY $CONDA_ENVIRONMENT $HOME/environment.yml
RUN conda env create --file $HOME/environment.yml && \
    echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate $(head -1 $HOME/environment.yml | cut -d' ' -f2)" >> ~/.bashrc && \
    echo ". ~/.bashrc" >> ~/.bash_profile

