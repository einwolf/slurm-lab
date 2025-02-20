# Slurm cluster setup

Ansible is running from Fedora 41

## Example commands

```bash
# Using localsysadmin
ansible -m setup -u localsysadmin -b -k -K slurm_cluster
ansible -m ping -u localsysadmin -b -k -K slurm_cluster
ansible-playbook -v -l slurm_cluster -u localsysadmin -b -k -K ping.yaml

# Using vault login
ANSIBLE_HOST_KEY_CHECKING=false ansible-playbook -v ping.yaml -l slurm1_cluster

# These files should be the same on all nodes
ansible -u localsysadmin -m shell -a "sha256sum /etc/munge/munge.key" -b -k -K slurm_cluster
ansible -u localsysadmin -m shell -a "sha256sum /etc/slurm/slurm.conf" -b -k -K slurm_cluster
ansible -u localsysadmin -m copy -a "src=roles/slurm_r9/templates/etc/slurm/slurm.conf dest=/etc/slurm/slurm.conf owner=root group=root mode=0664" -b -k -K slurm_cluster

# Delete munge.key
ansible -u localsysadmin -m shell -a "rm -rfv /etc/munge/munge.key" -b -k -K slurm1_cluster
```

```bash
ansible-playbook -v setup_slurm_munge.yaml
ansible-playbook -v -l slurm1_cluster copy_slurmconf.yaml

ansible-playbook -v -l slurm1_db -u localsysadmin setup_slurm_db.yaml
ansible-playbook -v -l slurm1_head -u localsysadmin setup_slurm_head.yaml
ansible-playbook -v -l slurm1_node -u localsysadmin setup_slurm_node.yaml
```
