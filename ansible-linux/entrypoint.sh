#!/bin/bash

# Generate temporary SSH key to allow access to the host machine.
# This will run on the container, to allow direct access through ssh
mkdir -p /root/.ssh 

cat /docker-ansible.pub >> /root/.ssh/authorized_keys

# We start ssh on the container
/etc/init.d/ssh start

# And we start a shell.
/bin/bash
