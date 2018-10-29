#! /bin/bash
set -e

# activate the environment
. /opt/conda/etc/profile.d/conda.sh
conda activate $(head -1 $HOME/${conda_environment} | cut -d' ' -f2)
