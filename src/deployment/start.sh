#!/bin/bash

echo "Starting Deployment of VehicleApp!"

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

${SCRIPT_DIR}/build_vehicleapp.sh | tee /dev/tty0
${SCRIPT_DIR}/deploy_vehicleapp.sh | tee /dev/tty0
