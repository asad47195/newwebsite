#!/bin/bash

if [ -z $(sudo docker ps -a -q) ];
then 
	sudo docker build /home/ubuntu/jenkins/workspace/Pipeline -t website
	sudo docker run -it -p 82:80 -d --name myDocker website
else
	sudo docker rm -f $(sudo docker ps -a -q)
	sudo docker build /home/ubuntu/jenkins/workspace/Pipeline -t website
	sudo docker run -it -p 82:80 -d --name myDocker website
