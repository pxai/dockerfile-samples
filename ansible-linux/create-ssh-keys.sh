#!/bin/bash

HOMEDIR=${HOME}
KEYNAME=docker-ansible  # This name is used in Dockerfile, be careful

mkdir -p ${HOMEDIR}/.ssh 
ssh-keygen -t rsa -f ${HOMEDIR}/.ssh/${KEYNAME} -P ""
cp ${HOMEDIR}/.ssh/${KEYNAME}.pub . && echo OK, public key copied and ready!!
