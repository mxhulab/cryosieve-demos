#! /bin/bash
#SBATCH -J REPLACE_IT_WITH_YOUR_JOB_NAME
#SBATCH -p REPLACE_IT_WITH_YOUR_PARTITION
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --gres=gpu:1
#SBATCH --output=%j.out
#SBATCH --error=%j.err

source activate CRYOSIEVE_ENV
srun -o output.txt cryosieve-core --i CNG.star --o output_CNG.star --angpix 1.32 --volume CNG_A.mrc --volume CNG_B.mrc --mask CNG_mask.mrc --retention_ratio 0.8 --frequency 40 --directory ./
