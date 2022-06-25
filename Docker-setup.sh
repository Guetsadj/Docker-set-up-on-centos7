#!/bin/bash

# Date : June 2022

# Author : Faustin Guetsa

echo "Docker installation on a Centos 7 server (recommended method)"

sleep 5

#Step1: Clean up the system

sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine1

#Step 2: Setup the docker repository

sudo yum install -y yum-utils -y

if 
	[ $? -eq 0 ]
then
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo1

exit 2
fi
#Step 3: Install the docker engine

 sudo yum install docker-ce docker-ce-cli containerd.io

 #Step 4: Check the status, start and enable docker daemon

  sudo systemctl status docker

  echo " if the daemon in not up and running, start and enable"
  sleep 5
  sudo systemctl start docker
  sudo systemctl enable docker

  echo "Check the status of the daemon to make sure it is up and running"
  sleep 5

  sudo systemctl status docker

