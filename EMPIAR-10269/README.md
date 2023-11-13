# EMPIAR-10269

The dataset "Single particle reconstruction of 52 kDa apo-state streptavidin at 3.3 Angstrom resolution" is hosted on the [EMPIAR database (EMPIAR-10269)](https://www.ebi.ac.uk/empiar/EMPIAR-10269/). The EMPIAR entry includes only the micrographs; the final stacks are missing. To address this, we have provided the final stack in the `Extract` folder within this repository, along with the `streptavidin_refined.star` file for your use. You may download the complete set [here](https://www.ebi.ac.uk/empiar/EMPIAR-10269/).

This scenario exemplifies the utilization of `cryosieve`. The case in point is configured to use the SLURM job manager system, leveraging 4 GPUs within a single node. Please note that you have the flexibility to modify the operational method to match your particular execution environment. Bear in mind, however, that to run `cryosieve`, the presence of Relion executables is mandatory.
