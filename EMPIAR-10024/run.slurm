#! /bin/bash
#SBATCH -J REPLACE_IT_WITH_YOUR_JOB_NAME
#SBATCH -p REPLACE_IT_WITH_YPUR_PARTITION
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --exclusive
#SBATCH --output=%j.out
#SBATCH --error=%j.err

export OMP_NUM_THREADS=1
export MKL_THREADING_LAYER=GNU
export PATH=REPLACE_IT_WITH_YOUR_MPI_BINARY_PATH:$PATH
export LD_LIBRARY_PATH=REPLACE_IT_WITH_YOUR_MPI_LIBRARY_PATH:$LD_LIBRARY_PATH

source activate CRYOSIEVE_ENV
srun -o output_mpi.txt cryosieve --reconstruct_software "mpirun -n 5 relion_reconstruct" --postprocess_software relion_postprocess --i trpa1_CryoSPARC_refined.star --o output/ --mask mask.mrc --angpix 1.2156 --num_iters 10 --frequency_start 40 --frequency_end 3 --retention_ratio 0.8 --sym C4 --num_gpus 1 --balance
grep "+ FINAL RESOLUTION:" output/_postprocess*.txt
