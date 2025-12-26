#!/bin/bash

aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 751849297539.dkr.ecr.ap-northeast-1.amazonaws.com 

if [ `docker images | grep 751849297539.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-05-ecr-repo | wc -l`  = 1 ]
then
        docker rmi 751849297539.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-05-ecr-repo
        docker pull 751849297539.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-05-ecr-repo:latest
else
        docker pull 751849297539.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-05-ecr-repo:latest
fi
