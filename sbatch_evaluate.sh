#!/bin/bash

#SBATCH --job-name=dreambooth_evaluate   # Job name
#SBATCH --time=48:00:00                  # Time limit hrs:min:sec
#SBATCH --gres=gpu:nv:1
#SBATCH --mail-type=ALL                  # Get email for all status updates
#SBATCH --mail-user=e0407638@u.nus.edu   # Email for notifications
#SBATCH --mem=16G                        # Request 16GB of memory

source ~/.bashrc
conda activate dreambooth-evaluate

python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_adaptive_torch/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_adaptive_torch/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B