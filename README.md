backup HP Switches with Ansible.

This repository contains an Ansible playbook and an inventory file to backup the configuration on cisco switches. The playbook is designed to be flexible and scalable, allowing you to backup from a large number of switches.

for run and get backup use this command in terminal ===============> ansible-playbook -i hp_access.yml hp_sw_backup.yml

insert username and password of switches in vault.yml
inser switches ip in hp_access.yml


you can decrypt vault.yml with this command: ansible-vault decrypt vault.yml <<<<<<<<<<<<< for security encrypt
