#!/bin/bash

# Generate temporary SSH key to allow access to the host machine.
# This will run on the container, to allow direct access through ssh
mkdir -p /root/.ssh 

cat /docker-ansible.pub >> /root/.ssh/authorized_keys

# ansible all -i "localhost," -m raw -a "apt-get install -y python-minimal"
# ansible-playbook -i "localhost," "$@"

mv /hostssh/authorized_keys.bak /hostssh/authorized_keys

# We start ssh
/etc/init.d/ssh start

# If you want to start a shell from the beginning
/bin/bash
