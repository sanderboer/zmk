#!/bin/bash
DIR="$( cd -P "$( dirname "$0" )" && pwd )"
# /Projects/Github/zmk/app/boards/shields/lil_chonky_bois
ROOTDIR=$DIR/../../../../
APPDIR=$DIR/../../../
pushd $ROOTDIR
source zephyr/zephyr-env.sh
popd
pushd $APPDIR
west config build.dir-fmt "build-single"
west build --pristine -b bluemicro840_v1 -- -DSHIELD=chonky_single
popd
