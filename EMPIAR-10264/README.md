# EMPIAR-11120

We encourage you to access and download the dataset named "LAT1-CD98hc bound to MEM-108 Fab" [(EMPIAR-10264)](https://www.ebi.ac.uk/empiar/EMPIAR-10264/) from the EMPIAR database. For optimal results, we advise focusing on the final stack specifically: `subtracted.mrcs`. We offer the `LAT1_CryoSPARC_refined.star` file, refined using CryoSPARC, to address the impacts on evaluation metrics due to advancements in orientation estimation techniques since the deposition of this dataset.

This scenario exemplifies the utilization of `cryosieve`. The case in point is configured to use the SLURM job manager system, leveraging 4 GPUs within a single node. Please note that you have the flexibility to modify the operational method to match your particular execution environment. Bear in mind, however, that to run `cryosieve`, the presence of Relion executables is mandatory.
