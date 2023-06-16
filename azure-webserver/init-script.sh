#!/bin/bash
#Installing Docker
sudo apt update -y
sudo ufw allow 5005
curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh
#Creating container
sudo docker run -d -p 5005:1234 --name chroApp mouchel/app:latest

