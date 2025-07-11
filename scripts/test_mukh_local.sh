#!/bin/bash

# Activate conda environment
# Initialize conda
eval "$(conda shell.bash hook)"
conda activate mukh-dev

echo "\nCleaning output directory..."
rm -rf output
echo "Output directory cleaned"
echo "--------------------------------"

echo "\nTesting face detection..."
echo "--------------------------------"

echo "\nTesting blazeface..."
echo "--------------------------------"
python -m examples.face_detection.basic_detection --detection_model blazeface
echo "Completed testing blazeface"
echo "--------------------------------"

echo "\nTesting ultralight..."
echo "--------------------------------"
python -m examples.face_detection.basic_detection --detection_model ultralight
echo "Completed testing ultralight"
echo "--------------------------------"

echo "\nTesting mediapipe..."
python -m examples.face_detection.basic_detection --detection_model mediapipe
echo "Completed testing mediapipe"
echo "--------------------------------"

echo "\nTesting deepfake detection..."
python -m examples.deepfake_detection.detection --detection_model resnet_inception
python -m examples.deepfake_detection.detection --detection_model efficientnet
echo "Completed testing deepfake detection"
echo "--------------------------------"

echo "\nTesting reenactment..."
python -m examples.reenactment.basic_reenactment --reenactor_model tps
echo "Completed testing reenactment"
echo "--------------------------------"

echo "\nTesting deepfake detection pipeline..."
python -m examples.pipelines.deepfake_detection
echo "Completed testing deepfake detection pipeline"
echo "--------------------------------"
