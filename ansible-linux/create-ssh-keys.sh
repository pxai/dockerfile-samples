#!/bin/bash

HOMEDIR=${HOME}
KEYNAME="docker-ansible"  # This name is used in Dockerfile, be careful

echo Creating keys in ${HOMEDIR}/.ssh

mkdir -p ${HOMEDIR}/.ssh  &&  echo "Created .ssh" || echo ".ssh directory exists"
ssh-keygen -t rsa -f ${HOMEDIR}/.ssh/${KEYNAME} -P "" && echo "Key created!!"
chmod 600 ${HOMEDIR}/.ssh/${KEYNAME}*

cp -p ${HOMEDIR}/.ssh/${KEYNAME}.pub . && echo OK, public key copied and ready!!

# If you have trouble in your host to access the docker container, try
# ssh-keygen -R localhost 
# ssh-add