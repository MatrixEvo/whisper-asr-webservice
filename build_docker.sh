#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Building CPU Docker image..."
docker build -t matrixevo/whisper-asr-webservice:latest-cpu -f Dockerfile .

echo "Building GPU Docker image..."
docker build -t matrixevo/whisper-asr-webservice:latest-gpu -f Dockerfile.gpu .

echo "Pushing CPU Docker image..."
docker push matrixevo/whisper-asr-webservice:latest-cpu

echo "Pushing GPU Docker image..."
docker push matrixevo/whisper-asr-webservice:latest-gpu

echo "Both images built and pushed successfully!"
