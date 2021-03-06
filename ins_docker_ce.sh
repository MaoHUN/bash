#!/bin/bash
sudo apt update &&
sudo apt install curl -y &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |
sudo apt-key add - 
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io -y

sudo docker run hello-world
#Hello from Docker!
#This message shows that your installation appears to be working correctly.

#To generate this message, Docker took the following steps:
# 1. The Docker client contacted the Docker daemon.
# 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
#    (amd64)
# 3. The Docker daemon created a new container from that image which runs the
#    executable that produces the output you are currently reading.
# 4. The Docker daemon streamed that output to the Docker client, which sent it
#    to your terminal.
#
#To try something more ambitious, you can run an Ubuntu container with:
# $ docker run -it ubuntu bash
#
#Share images, automate workflows, and more with a free Docker ID:
# https://hub.docker.com/
#
#For more examples and ideas, visit:
# https://docs.docker.com/get-started/

## if you see this msg the docker is work. (1st time downloading the hello-world container)


