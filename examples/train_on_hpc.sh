#!/bin/bash
#SBATCH --job-name=DL_HW
#SBATCH --mail-type=FAIL # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --ntasks=1
#SBATCH --output=DL_HW_%j.out
#SBATCH --error=DL_HW_%j.error
#SBATCH --mem=32G
#SBATCH --time=10:00:00   
#SBATCH --partition=gpu4_short
#SBATCH --gres=gpu:v100:1


module load condaenvs/new/torch2.0_DL
cd PATH_TO_YOUR_CODE_FOLDER
nvidia-smi
python train_on_hpc.py