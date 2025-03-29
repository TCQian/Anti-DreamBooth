#!/bin/bash

#SBATCH --job-name=dreambooth_evaluate   # Job name
#SBATCH --time=6:00:00                 # Time limit hrs:min:sec
#SBATCH --gres=gpu:nv:1
#SBATCH --mail-type=ALL                  # Get email for all status updates
#SBATCH --mail-user=e0407638@u.nus.edu   # Email for notifications
#SBATCH --mem=16G                        # Request 16GB of memory

source ~/.bashrc
conda activate dreambooth-evaluate

# ASPL
echo "ISM: Running evaluation for ASPL"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for ASPL"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person

echo "ISM: Running evaluation for ASPL Compressed"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for ASPL Compressed"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person


echo "ISM: Running evaluation for ASPL DCT PGD"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_dct_pgd/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for ASPL DCT PGD"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_dct_pgd/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person

echo "ISM: Running evaluation for ASPL DCT PGD Compressed"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_dct_pgd/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for ASPL DCT PGD Compressed"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_dct_pgd/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person


echo "ISM: Running evaluation for ASPL DCT Mask"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_dct_mask/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for ASPL DCT Mask"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_dct_mask/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person

echo "ISM: Running evaluation for ASPL DCT Mask Compressed"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_dct_mask/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for ASPL DCT Mask Compressed"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_dct_mask/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person


echo "ISM: Running evaluation for ASPL DCT Gradient"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_dct_gradient/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for ASPL DCT Gradient"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_dct_gradient/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person

echo "ISM: Running evaluation for ASPL DCT Gradient Compressed"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_dct_gradient/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for ASPL DCT Gradient Compressed"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/ASPL_dct_gradient/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person


# FSMG
echo "ISM: Running evaluation for FSMG"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for FSMG"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person

echo "ISM: Running evaluation for FSMG Compressed"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for FSMG Compressed"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person


echo "ISM: Running evaluation for FSMG DCT PGD"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG_dct_pgd/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for FSMG DCT PGD"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG_dct_pgd/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person

echo "ISM: Running evaluation for FSMG DCT PGD Compressed"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG_dct_pgd/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for FSMG DCT PGD Compressed"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG_dct_pgd/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person


echo "ISM: Running evaluation for FSMG DCT Mask"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG_dct_mask/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for FSMG DCT Mask"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG_dct_mask/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person

echo "ISM: Running evaluation for FSMG DCT Mask Compressed"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG_dct_mask/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for FSMG DCT Mask Compressed"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG_dct_mask/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person


echo "ISM: Running evaluation for FSMG DCT Gradient"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG_dct_gradient/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for FSMG DCT Gradient"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG_dct_gradient/n000050_DREAMBOOTH/checkpoint-1000/dreambooth/a_photo_of_sks_person

echo "ISM: Running evaluation for FSMG DCT Gradient Compressed"
python evaluations/ism_fdfr.py \
    --data_dir /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG_dct_gradient/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person \
    --emb_dirs /home/e/e0407638/github/Anti-DreamBooth/data/n000050/set_B

echo "Brisque: Running evaluation for FSMG DCT Gradient Compressed"
python evaluations/brisques.py --prompt_path /home/e/e0407638/github/Anti-DreamBooth/outputs/FSMG_dct_gradient/n000050_DREAMBOOTH_compressed/checkpoint-1000/dreambooth/a_photo_of_sks_person