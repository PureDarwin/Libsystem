#!/bin/zsh

set -e

mkdir -p ${BUILT_PRODUCTS_DIR}
cat ${SRCROOT}/linkerargs | sed -e "s,\${DEPROOT},${DEPROOT},g" > ${BUILT_PRODUCTS_DIR}/linkerargs
touch ${BUILT_PRODUCTS_DIR}/linker_arguments_changed.c
