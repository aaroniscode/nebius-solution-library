#!/bin/bash

#SBATCH -J enroot
#SBATCH --output=results/enroot.out
#SBATCH --error=results/enroot.out
#SBATCH --gpus=1

# Specify the image in order to run the job inside a container
srun \
  --gpus=1 \
  --container-image="nvidia/cuda:12.2.2-base-ubuntu20.04" \
  echo "Run nvidia-smi from enroot container on $(hostname)" \
  && nvidia-smi
