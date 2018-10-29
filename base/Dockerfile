FROM continuumio/miniconda3:4.5.11

MAINTAINER pughdr <david.pugh@kaust.edu.sa>

# create a new user (defaults to 'al-khawarizmi')
USER root
ARG username=al-khawarizmi
RUN useradd --create-home --home-dir /home/${username} ${username}
ENV HOME /home/${username}

# switch to newly created user to avoid running container as root
USER ${username}
WORKDIR $HOME

# build and activate the specified conda environment file (defaults to 'environment.yml')
ARG conda_environment=environment.yml
COPY ${conda_environment} .
RUN conda env create --file ${conda_environment} && \
    echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate $(head -1 ${conda_environment} | cut -d' ' -f2)" >> ~/.bashrc && \
    echo ". ~/.bashrc" >> ~/.profile

COPY ./entrypoint.sh .
ENTRYPOINT ["entrypoint.sh"]
