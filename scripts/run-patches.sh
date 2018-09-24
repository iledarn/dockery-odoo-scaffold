#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# Only for framework patches
APPLY_DIR="${DIR}/../vendor/odoo/cc"

# Source the patches
source <(docker run ${IMAGE}:${ODOO_VERSION} patches)
