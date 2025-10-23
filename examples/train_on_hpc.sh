#!/bin/bash
#SBATCH --job-name=DL_HW
#SBATCH --mail-type=FAIL # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --ntasks=1
#SBATCH --output=../logs/Tumor_Normal_%j.txt
#SBATCH --mem=100G
#SBATCH --time=10:00:00   
#SBATCH --partition=gpu4_short


module load condaenvs/new/torch2.0_DL
cd ../

#move your code from the ipynb file to a .py script in the src folder
python src/train.py