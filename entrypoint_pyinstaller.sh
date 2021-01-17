#!/bin/bash
SRC_DIR=$1
SPEC_FILE=${2:-*.spec}
OUT_PATH=$3
#change dir
cd "$SRC_DIR" || exit
#install
poetry config virtualenvs.create false
poetry add pyinstaller virtualenv
python -m spacy download pt
#build
pyinstaller --clean -y --distpath "$OUT_PATH" "$SPEC_FILE"
#change permissions
chown -R --reference=. "$OUT_PATH"