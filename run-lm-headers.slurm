#!/bin/bash
#SBATCH --mem=20000 
#SBATCH --gres=gpu:1 
#SBATCH --time=1:00:00 
#SBATCH --constraint=rtx_2080

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
