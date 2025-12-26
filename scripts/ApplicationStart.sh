#!/bin/bash
docker run -p 80:5000 --name flask-web -d 751849297539.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-05-ecr-repo:latest
sleep 20s
