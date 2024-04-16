# Slurm cluster setup

Ansible is running from Fedora 39

## Example commands

```bash
# Using localsysadmin
ansible -m setup -u localsysadmin -b -k -K slurm_cluster
ansible -m ping -u localsysadmin -b -k -K slurm_cluster

ansible-playbook -v -l slurm_cluster -u localsysadmin -b -k -K ping.yaml
```

```bash
# These tasks use normal users and sudo

# Setup for domain users
ansible-playbook -v -l slurm_head setup_slurm_head.yaml -b -k -K
ansible-playbook -v -l slurm_node setup_slurm_node.yaml -b -k -K

```

## Utility

```bash
ansible -m command -a "rm -rfv sshkeys dotdrop" -k -b -K rhel7,rhel8,rhel9,fedora
```
