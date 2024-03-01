#!/bin/sh

set -u
set -e

INSTALL_IMAGES_DIR="output/images"
INSTALL_MODULES_DIR="output/target/lib/modules"

rsync -rv output.v7/target/lib/modules/ ${INSTALL_MODULES_DIR}
cp -v output.v7/images//zImage ${INSTALL_IMAGES_DIR}/kernel7.img
cp -v output.v7/images/*.dtb ${INSTALL_IMAGES_DIR}
cp -v output.min/images/rootfs.cpio.gz ${INSTALL_IMAGES_DIR}
