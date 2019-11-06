#!/bin/bash

# Generate temporary SSH key to allow access to the host machine.
HOMEDIR=${HOME}
KEYNAME=docker-ansible

mkdir -p ${HOMEDIR}/.ssh 
ssh-keygen -t rsa -f ${HOMEDIR}/.ssh/${KEYNAME} -P ""

cp /hostssh/authorized_keys /hostssh/authorized_keys.bak
cat ${HOMEDIR}/.ssh/${KEYNAME}.pub >> /hostssh/authorized_keys

# ansible all -i "localhost," -m raw -a "apt-get install -y python-minimal"
# ansible-playbook -i "localhost," "$@"

mv /hostssh/authorized_keys.bak /hostssh/authorized_keys

# We start ssh
/etc/init.d/ssh start

# If you want to start a shell from the beginning
/bin/bash
