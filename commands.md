# Slurm cluster setup

Ansible is running from Fedora 39

## Example commands

```bash
# Using localsysadmin
ansible -m setup -u localsysadmin -b -k -K slurm_cluster
ansible -m ping -u localsysadmin -b -k -K slurm_cluster

ansible -u localsysadmin -m shell -a "rm -rfv /etc/munge/munge.key" -b -k -K slurm_cluster

ansible-playbook -v -l slurm_cluster -u localsysadmin -b -k -K ping.yaml
```

```bash
ansible-playbook -v -u localsysadmin setup_slurm_munge.yaml -b -k -K

ansible-playbook -v -l slurm_db -u localsysadmin setup_slurm_db.yaml -b -k -K
ansible-playbook -v -l slurm_head -u localsysadmin setup_slurm_head.yaml -b -k -K
ansible-playbook -v -l slurm_node -u localsysadmin setup_slurm_node.yaml -b -k -K
```
