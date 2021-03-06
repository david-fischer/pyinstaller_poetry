#!/bin/bash
SRC_DIR=$1
SPEC_FILE=${2:-*.spec}
OUT_PATH=$3
pre_package_hook=$4
#change dir
cd "$SRC_DIR" || exit
#install
poetry config virtualenvs.create false
poetry add pyinstaller virtualenv
poetry install --no-root --no-dev
$pre_package_hook
#build
pyinstaller --clean -y --distpath "$OUT_PATH" "$SPEC_FILE"
#change permissions
chown -R --reference=. "$OUT_PATH"