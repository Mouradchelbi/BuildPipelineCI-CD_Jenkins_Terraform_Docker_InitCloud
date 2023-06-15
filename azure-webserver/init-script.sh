#!/bin/bash

#Installing Docker
curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh


#Creating container
sudo docker run -d -p 80:80 mouchel/webappnginx:latest

