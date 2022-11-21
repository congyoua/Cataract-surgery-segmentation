#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=16
#SBATCH --mem=32000M
#SBATCH --time=16:00:00
#SBATCH --output=/home/njrttx/scratch/CSC490_OpenYourEyes/presentation_output/OCRNet_rf0.15_lvsz_trivialAug.out

echo "Current working directory: pwd"

cd $SCRATCH
./setup.sh
source ./490_env/bin/activate
cd /home/njrttx/scratch/CSC490_OpenYourEyes
python main.py -c configs/presentation/OCRNet_rf0.15_lvsz_trivialAug.json --task 2 -d 0 --data_path "/home/njrttx/scratch/CSC490_OpenYourEyes/data"
