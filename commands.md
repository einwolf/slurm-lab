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
reset && ansible-playbook -v -l rhel7,rhel8,rhel9,fedora create-net-mounts.yaml -b -k -K
reset && ansible-playbook -v -l rhel7,rhel8,rhel9,fedora initial-user-setup-domain.yaml -b -k -K

# Setup for local users
reset && ansible-playbook -v -l axiom,arcnova create-net-mounts.yaml -b -k -K
reset && ansible-playbook -v -l axiom,arcnova initial-user-setup-local.yaml -b -k -K
```

## Utility

```bash
ansible -m command -a "rm -rfv sshkeys dotdrop" -k -b -K rhel7,rhel8,rhel9,fedora
```
