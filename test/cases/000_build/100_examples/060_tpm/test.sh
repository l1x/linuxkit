#!/bin/sh
# SUMMARY: Test the tpm example
# LABELS:

set -e

# Source libraries. Uncomment if needed/defined
#. "${RT_LIB}"
. "${RT_PROJECT_ROOT}/_lib/lib.sh"

IMAGE_NAME=tpm

clean_up() {
	# remove any files, containers, images etc
	rm -rf ${IMAGE_NAME}*
}

trap clean_up EXIT

# Test code goes here
moby build "${LINUXKIT_EXAMPLES_DIR}/${IMAGE_NAME}.yml"

exit 0
