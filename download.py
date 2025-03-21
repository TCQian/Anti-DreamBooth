import os
os.environ["HF_HUB_DOWNLOAD_THREADS"] = "1"
from huggingface_hub import snapshot_download
target_dir = "./stable-diffusion"
model_path = snapshot_download(repo_id="stabilityai/stable-diffusion-2-1-base",local_dir=target_dir)
print(f"Model downloaded to: {model_path}")
