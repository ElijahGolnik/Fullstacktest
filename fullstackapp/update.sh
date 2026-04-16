#!/bin/bash

git pull origin main

docker build -t updateimage:latest .
docker image prune -f 

docker stop updated-container
docker rm updated-container

docker run -d --name updated-container -p 3000:3000 -v D:/AllProjects/Fullstacktest/fullstackapp:/fullstackapp sha256:2c977a2c427b68c465f6ce32021cc0b93e37e23c1fe3cf7db5a07614c5118223