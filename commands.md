# Slurm cluster setup

Ansible is running from Fedora 39

## Example commands

```bash
# Using localsysadmin
ansible -m setup -u localsysadmin -b -k -K slurm_cluster
ansible -m ping -u localsysadmin -b -k -K slurm_cluster
ansible-playbook -v -l slurm_cluster -u localsysadmin -b -k -K ping.yaml

# These files should be the same on all nodes
ansible -u localsysadmin -m shell -a "sha256sum /etc/munge/munge.key" -b -k -K slurm_cluster
ansible -u localsysadmin -m shell -a "sha256sum /etc/slurm/slurm.conf" -b -k -K slurm_cluster

# Delete munge.key
ansible -u localsysadmin -m shell -a "rm -rfv /etc/munge/munge.key" -b -k -K slurm_cluster
```

```bash
ansible-playbook -v -u localsysadmin setup_slurm_munge.yaml -b -k -K

ansible-playbook -v -l slurm_db -u localsysadmin setup_slurm_db.yaml -b -k -K
ansible-playbook -v -l slurm_head -u localsysadmin setup_slurm_head.yaml -b -k -K
ansible-playbook -v -l slurm_node -u localsysadmin setup_slurm_node.yaml -b -k -K
```
