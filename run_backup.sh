#!/bin/bash

source ~/.bashrc

# Activate the virtual environment
source /root/ansible_env/bin/activate

# Navigate to the directory containing the playbook and configuration
#cd /home/aliansible/ansible_env/backup_sw
cd /root/ansiblePlaybooks/official/backupConfig

# Run the Ansible playbook for Cisco switche cores


ansible-playbook -i cisco-core.yml cisco_sw_backup.yml --vault-password-file /root/ansiblePlaybooks/official/backupConfig/vault_pass.sh >> /root/ansiblePlaybooks/official/backupConfig/playbookLogs/backup_cisco_core.log

#sleep 350


# Run the Ansible playbook for cisco switch DS

ansible-playbook -i cisco-ds-host.yml cisco_sw_backup.yml --vault-password-file /root/ansiblePlaybooks/official/backupConfig/vault_pass.sh >> /root/ansiblePlaybooks/official/backupConfig/playbookLogs/backup_cisco_ds.log

#sleep 350

# Run the Ansible playbook for cisco Switch Access

ansible-playbook -i cisco-access.yml cisco_sw_backup.yml --vault-password-file /root/ansiblePlaybooks/official/backupConfig/vault_pass.sh >> /root/ansiblePlaybooks/official/backupConfig/playbookLogs/backup_cisco_access.log

#sleep 700


# Run the Ansible playbook for hp cores

ansible-playbook -i hp-core.yml hp_sw_backup.yml --vault-password-file /root/ansiblePlaybooks/official/backupConfig/vault_pass.sh >> /root/ansiblePlaybooks/official/backupConfig/playbookLogs/backup_hp_core.log

#sleep 350

# Run the Ansible playbook for hp DS


ansible-playbook -i hp-ds-host.yml hp_sw_backup.yml --vault-password-file /root/ansiblePlaybooks/official/backupConfig/vault_pass.sh >> /root/ansiblePlaybooks/official/backupConfig/playbookLogs/backup_hp_ds.log

#sleep 350


# Run the Ansible Playbook for hp Access

ansible-playbook -i hp-access.yml hp_sw_backup.yml --vault-password-file /root/ansiblePlaybooks/official/backupConfig/vault_pass.sh >> /root/ansiblePlaybooks/official/backupConfig/playbookLogs/backup_hp_access.log

#sleep 700


# Run the Ansible Playbook for Cisco Routers

ansible-playbook -i router-cisco.yml router_cisco_backup.yml --vault-password-file /root/ansiblePlaybooks/official/backupConfig/vault_pass.sh >> /root/ansiblePlaybooks/official/backupConfig/playbookLogs/backup_cisco_routers.log


# Deactivate the virtual environment (optional)
deactivate
