#!/bin/bash

# Generate temporary SSH key to allow access to the host machine.
mkdir -p ${HOME}/.ssh
ssh-keygen -f ${HOME}/.ssh/id_rsa -P ""

cp /hostssh/authorized_keys /hostssh/authorized_keys.bak
cat ${HOME}/.ssh/id_rsa.pub >>/hostssh/authorized_keys

# ansible all -i "localhost," -m raw -a "apt-get install -y python-minimal"
# ansible-playbook -i "localhost," "$@"

mv /hostssh/authorized_keys.bak /hostssh/authorized_keys

# We start ssh
/etc/init.d/ssh start

# If you want to start a shell from the beginning
/bin/bash
