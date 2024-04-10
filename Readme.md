# Vagrant SLURM cluster

Slurm on AlmaLinux 9 with the packages from EPEL 9.

## References

References

```bash
https://southgreenplatform.github.io/trainings/hpc/slurminstallation/
https://gitlab.in2p3.fr/randriatoamanana/ansible-simple-slurm-cluster
https://github.com/bertvv/ansible-role-mariadb/blob/master/tasks/root-password.yml
```

## Slurm basics

```bash
# Run script
sbatch something.sh
sbatch << EOF
#!/bin/bash
something
EOF

# Queue
squeue
squeue jobid
squeue -u user -o stdout.txt -e stderr.txt
scancel jobid
scontrol hold jobid
scontrol release jobid

# Nodes
sinfo
sinfo -N
scontrol show nodes

# GUI
sview

```
