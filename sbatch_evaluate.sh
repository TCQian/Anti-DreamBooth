#!/bin/bash

#SBATCH --job-name=dreambooth_evaluate   # Job name
#SBATCH --time=48:00:00                  # Time limit hrs:min:sec
#SBATCH --gres=gpu:nv:1
#SBATCH --mail-type=ALL                  # Get email for all status updates
#SBATCH --mail-user=e0407638@u.nus.edu   # Email for notifications
#SBATCH --mem=16G                        # Request 16GB of memory

source ~/.bashrc
conda activate dreambooth-evaluate

echo "ISM: Running evaluation for ASPL Normal"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "ISM: Running evaluation for ASPL Normal Compressed"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "ISM: Running evaluation for ASPL Adaptive"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_adaptive/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "ISM: Running evaluation for ASPL Adaptive Compressed"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_adaptive/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "ISM: Running evaluation for ASPL Adaptive Torch"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_adaptive_torch/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "ISM: Running evaluation for ASPL Adaptive Torch Compressed"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_adaptive_torch/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "ISM: Running evaluation for ASPL Adaptive Torch Self"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_adaptive_torch_self/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "ISM: Running evaluation for ASPL Adaptive Torch Self Compressed"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_adaptive_torch_self/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B