#!/bin/bash


# Usage: ci-build-helper.sh <SUFFIX>

docker build --tag "${IMAGE}:${1}" \
    --build-arg FROM_IMAGE="${IMAGE}:${ODOO_VERSION}-${PREBUILD_SUFFIX}" \
    "${FROMREPO}#master:images/${1}"
docker push "${IMAGE}:${1}" &> /dev/null