# Exit immediately if a command exist with a non-zero status
set -e

CURRENT_DIR=$(pwd)
WORK_DIR="./capsicum_annuum_dataset"
DATASET_ROOT="${WORK_DIR}/dataset"
SEMANTIC_SEG_FOLDER="${DATASET_ROOT}/mask"
IMAGE_FOLDER="${DATASET_ROOT}/images"
LIST_FOLDER="${DATASET_ROOT}/index"

# Create output directory for storing TFRecords
OUTPUT_DIR="${WORK_DIR}/tfrecord"
mkdir -p "${OUTPUT_DIR}"

# Building TFRecords of dataset
echo "Converting dataset..."
python ./build_capsicum_annuum_dataset.py \
  --image_folder="${IMAGE_FOLDER}" \
  --semantic_segmentation_folder="${SEMANTIC_SEG_FOLDER}" \
  --list_folder="${LIST_FOLDER}" \
  --image_format="png" \
  --output_dir="${OUTPUT_DIR}"