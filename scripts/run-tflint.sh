#!/usr/bin/env bash
set -e

TARGET_PATH=${1:-"."}

echo "======================================================"
echo " [Enterprise DevOps] Initiating TFLint Static Analysis"
echo " Target Directory: ${TARGET_PATH}"
echo "======================================================"

cd "${TARGET_PATH}"

echo "1. Initializing TFLint Plugins..."
tflint --init

echo "2. Executing TFLint Inspection..."
tflint --color

echo "✔ [SUCCESS] Linting completed successfully."

