#!/bin/bash


#generate ssh key and get permission
yes '' | ssh-keygen -N '' > /dev/null
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys ~/.ssh/jenkinsAgent_rsa


#start openssh-server
/etc/init.d/ssh start

#get ssh key
cat ~/.ssh/id_rsa


/bin/bash
