#! /bin/bash
set -e

# activate the environment
echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/bashrc
conda activate $(head -1 $HOME/${environment} | cut -d' ' -f2)
