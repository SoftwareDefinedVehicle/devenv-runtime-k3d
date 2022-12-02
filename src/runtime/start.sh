#!/bin/bash

echo "Hello, Runtime k3d!"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

${SCRIPT_DIR}/configure_controlplane.sh | tee /dev/tty0
${SCRIPT_DIR}/deploy_runtime.sh | tee /dev/tty0
