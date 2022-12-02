#!/bin/bash

echo "Bye, Runtime k3d!"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

${SCRIPT_DIR}/configure_controlplane.sh | tee /dev/tty0
${SCRIPT_DIR}/uninstall_runtime.sh | tee /dev/tty0
${SCRIPT_DIR}/reset_controlplane.sh | tee /dev/tty0
