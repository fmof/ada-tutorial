#!/bin/bash

conda_env_name=/home/ferraro/ferraro_user/ada_envs/nlp-env

module load Anaconda3
source /usr/ebuild/software/Anaconda3/2020.07/etc/profile.d/conda.sh
conda activate $conda_env_name

cd ~/pytorch-examples/word_language_model
pwd
ls

echo ""

nvidia-smi

echo ""

python -u main.py --cuda
