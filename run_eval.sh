# Usage example: ./run_eval.sh liberty notredame "--use_gpu --gpu_id=0"

TRAIN_DATASET=$1
TEST_DATASET=$2
GPU_OPTIONS=$3
BASE_DIR=./
DATA_DIR= /media/impoweralgo9/soft-data/matchnet/data
MODEL_DIR=$BASE_DIR/models
MODEL_NAME="${TRAIN_DATASET}_r_0.01_m_0"
TEST_DB=/home/impoweralgo9/deeplearning/caffe/matchnet/data/${TEST_DATASET}.leveldb
TEST_PAIR=/home/impoweralgo9/deeplearning/caffe/matchnet/data/${TEST_DATASET}/m50_256_256_0.txt
OUTPUT=/tmp/predictions.txt

python evaluate_matchnet.py \
    $GPU_OPTIONS \
   $MODEL_DIR/feature_net.pbtxt \
    $MODEL_DIR/$MODEL_NAME.feature_net.pb \
    $MODEL_DIR/classifier_net.pbtxt \
    $MODEL_DIR/$MODEL_NAME.classifier_net.pb \
    $TEST_DB \
    $TEST_PAIR \
   $OUTPUT


    
    
