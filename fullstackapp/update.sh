#!/bin/bash

cd D:/AllProjects/Fullstacktest/fullstackapp

git pull origin main

docker build -t updateimage:latest .
docker image prune -f 

docker stop updated-container
docker rm updated-container

docker run -d --name updated-container -p 3000:3000 -v D:/AllProjects/Fullstacktest/fullstackapp:/fullstackapp sha256:6cfdd2b7633a10efc64ff29372f2c5dba43b0a7bc2d3f91897f86cc4383e4486