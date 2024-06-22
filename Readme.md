# SLURM cluster

Slurm on AlmaLinux 9 with the packages from EPEL 9.

|Name  |Type  |Runs|
|---   |---   |---|
|sl1h1 |head  |slurmctld,munge|
|sl1db1|db    |slurmdbd,munge|
|sl1w1 |worker|slurmd,munge|
|sl1w2 |worker|slurmd,munge|
|sl1w3 |worker|slurmd,munge|
|sl1w4 |worker|slurmd,munge|

slurmrestd ?

## References

References

```bash
https://southgreenplatform.github.io/trainings/hpc/slurminstallation/
https://gitlab.in2p3.fr/randriatoamanana/ansible-simple-slurm-cluster
https://github.com/bertvv/ansible-role-mariadb/blob/master/tasks/root-password.yml
```

## Munge

```bash
# Test munge from head
munge -n | unmunge
munge -n | ssh sl1w1 unmunge
```

## Slurm basics

```bash
# Run command (waits for output)
srun sleep 10
srun -n4 -l hostname

# Run script
sbatch something.sh
sbatch << EOF
#!/bin/bash
sleep 10
EOF

# Queue
squeue
squeue jobid
squeue -u user -o stdout.txt -e stderr.txt

scancel jobid

scontrol hold jobid
scontrol release jobid
scontrol show node sl1w1

# Nodes
sinfo
sinfo -N
scontrol show nodes

# GUI
sview

```

## Slurm commands

```text
sacct is used to report job or job step accounting information about active or completed jobs.

salloc is used to allocate resources for a job in real time. Typically this is used to allocate resources and spawn a shell. The shell is then used to execute srun commands to launch parallel tasks.

sattach is used to attach standard input, output, and error plus signal capabilities to a currently running job or job step. One can attach to and detach from jobs multiple times.

sbatch is used to submit a job script for later execution. The script will typically contain one or more srun commands to launch parallel tasks.

sbcast is used to transfer a file from local disk to local disk on the nodes allocated to a job. This can be used to effectively use diskless compute nodes or provide improved performance relative to a shared file system.

scancel is used to cancel a pending or running job or job step. It can also be used to send an arbitrary signal to all processes associated with a running job or job step.

scontrol is the administrative tool used to view and/or modify Slurm state. Note that many scontrol commands can only be executed as user root.

sinfo reports the state of partitions and nodes managed by Slurm. It has a wide variety of filtering, sorting, and formatting options.

sprio is used to display a detailed view of the components affecting a job's priority.

squeue reports the state of jobs or job steps. It has a wide variety of filtering, sorting, and formatting options. By default, it reports the running jobs in priority order and then the pending jobs in priority order.

srun is used to submit a job for execution or initiate job steps in real time. srun has a wide variety of options to specify resource requirements, including: minimum and maximum node count, processor count, specific nodes to use or not use, and specific node characteristics (so much memory, disk space, certain required features, etc.). A job can contain multiple job steps executing sequentially or in parallel on independent or shared resources within the job's node allocation.

sshare displays detailed information about fairshare usage on the cluster. Note that this is only viable when using the priority/multifactor plugin.

sstat is used to get information about the resources utilized by a running job or job step.

strigger is used to set, get or view event triggers. Event triggers include things such as nodes going down or jobs approaching their time limit.

sview is a graphical user interface to get and update state information for jobs, partitions, and nodes managed by Slurm.
```
