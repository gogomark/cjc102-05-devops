set -ex
#set registry
USERNAME=751849297539.dkr.ecr.ap-northeast-1.amazonaws.com
# image name
IMAGE=cjc102-05-ecr-repo
docker build -t $USERNAME/$IMAGE:latest .
version=`cat VERSION`
echo "version: $version"
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version
docker push $USERNAME/$IMAGE:$version

