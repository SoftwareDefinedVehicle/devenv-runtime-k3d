#!/bin/bash

echo "Hello, Runtime k3d!"
printenv

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
${SCRIPT_DIR}/deploy_runtime.sh
