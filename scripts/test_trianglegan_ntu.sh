DATAROOT=./datasets
DATA_NAME=ntu_dataset
RESTORE_NAME=ntu_part_trianglegan_skeleton
MODEL_MODE=triangle_gan
DATASET_MODE=gesture_part
COND_TYPE=skeleton
IMAGE_NAME=images-part
TEST_NAME=test.part.lst #ntu.part.video.demo #ntu.part.user-study.demo #ntu.diversity.demo #ntu.part.demo

INPUT_NC=3
OUTPUT_NC=3
VDIM=10 # gesture
COND_DIM=1
NGF=64
BATCH_SIZE=1
LOAD_SIZE=256
ROLL_NUM=1
DRAW_KP=0

NORM=instance
CHECKPOINTS_DIR=./checkpoints
NUM_TEST=20000

GPU_IDS=0
python3.5 ./test.py \
  --dataroot ${DATAROOT} \
  --data_name ${DATA_NAME} \
  --name ${RESTORE_NAME} \
  --model ${MODEL_MODE} \
  --dataset_mode ${DATASET_MODE} \
  --cond_type ${COND_TYPE} \
  --image_name ${IMAGE_NAME} \
  --test_name ${TEST_NAME} \
  --input_nc ${INPUT_NC} \
  --output_nc ${OUTPUT_NC} \
  --ngf ${NGF} \
  --vdim ${VDIM} \
  --cond_dim ${COND_DIM} \
  --batch_size ${BATCH_SIZE} \
  --load_size ${LOAD_SIZE} \
  --norm ${NORM} \
  --netG resnet_6blocks \
  --checkpoints_dir ${CHECKPOINTS_DIR} \
  --gpu_ids ${GPU_IDS} \
  --num_test ${NUM_TEST} \
  --roll_num ${ROLL_NUM} \
  --draw_kp ${DRAW_KP}