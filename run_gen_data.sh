# Generate dataset from the original phototour dataset.
# See data/README.md for instructions to download the dataset.

DATASET=liberty
DIR=/media/impoweralgo9/soft-data/matchnet/data
python generate_patch_db.py ${DIR}/${DATASET}/info.txt \
    ${DIR}/${DATASET}/interest.txt \
    ${DIR}/${DATASET} ${DIR}/leveldb/${DATASET}.leveldb

DATASET=notredame
DIR=/media/impoweralgo9/soft-data/matchnet/data
python generate_patch_db.py ${DIR}/${DATASET}/info.txt \
    ${DIR}/${DATASET}/interest.txt \
    ${DIR}/${DATASET} ${DIR}/leveldb/${DATASET}.leveldb

DATASET=yosemite
python generate_patch_db.py ${DIR}/${DATASET}/info.txt \
    ${DIR}/${DATASET}/interest.txt \
    ${DIR}/${DATASET} ${DIR}/leveldb/${DATASET}.leveldb


