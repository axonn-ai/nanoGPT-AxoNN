#!/bin/bash
#SBATCH -N 1
#SBATCH -p gpu
#SBATCH --gres=gpu:4
#SBATCH --ntasks-per-node 128 
#SBATCH --time=00:15:00
#SBATCH -A bhatele-lab-aac 

module load gcc/9.4.0
module load openmpi
. /home/sathwik7/scratch.bhatele-lab/tutorial-venv/bin/activate

pip install mpi4py

cmd="python3 train.py"
echo "${cmd}"
eval "${cmd}"
