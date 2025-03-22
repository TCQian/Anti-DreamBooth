import os
from PIL import Image
import argparse


def compress_images(input_dir, quality=75, output_dir=None):
    """
    Compress images in the specified directory using JPEG compression.

    Args:
        input_dir (str): Path to the directory containing images.
        quality (int): JPEG quality factor (1-100). Lower quality means higher compression.
        output_dir (str, optional): Directory to save compressed images.
            If None, images in input_dir will be overwritten.
    """
    if output_dir is None:
        output_dir = input_dir
    elif not os.path.exists(output_dir):
        os.makedirs(output_dir)

    for filename in os.listdir(input_dir):
        file_path = os.path.join(input_dir, filename)
        if os.path.isfile(file_path) and filename.lower().endswith((".png")):
            try:
                with Image.open(file_path) as img:
                    # Convert to RGB if necessary (JPEG does not support transparency)
                    if img.mode != "RGB":
                        img = img.convert("RGB")
                    output_file = os.path.join(output_dir, filename)
                    # Save with specified JPEG quality
                    img.save(output_file, "JPEG", quality=quality)
                    print(f"Compressed {filename} with quality={quality}")
            except Exception as e:
                print(f"Error processing {filename}: {e}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Compress images in a directory using JPEG compression."
    )
    parser.add_argument(
        "input_dir", type=str, help="Directory containing images to compress."
    )
    parser.add_argument("--quality", type=int, default=75, help="JPEG quality (1-100).")
    parser.add_argument(
        "--output_dir",
        type=str,
        default=None,
        help="Directory to save compressed images (defaults to input_dir).",
    )
    args = parser.parse_args()

    compress_images(args.input_dir, quality=args.quality, output_dir=args.output_dir)
