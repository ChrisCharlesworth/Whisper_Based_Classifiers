#!/bin/bash

#SBATCH --job-name="GPU_CNN"
#SBATCH --time=5:00:00
#SBATCH --partition=gpu-a100
#SBATCH --gres=gpu:1
#SBATCH --mem-per-gpu=180GB
#SBATCH --account=education-eemcs-courses-cse3000

module load 2022r2
module load cuda/11.6
module load 2023r1
module load python
module load py-pip
pip3 install torch
pip3 install numpy
pip3 install scikit-learn
pip3 install ijson

srun python CNN_k_fold.py > CNN_k_fold.log