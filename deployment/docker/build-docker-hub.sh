#!/bin/bash
export DOCKERHUB_IMAGE=devicegateway
export DOCKERHUB_TAG=0.0.1

rm -rf deployment/docker/device-gateway/
cp -R $API_SHELL_PATH/device-gateway deployment/docker/device-gateway

docker build -m "300M" -t $DOCKERHUB_NAMESPACE/$DOCKERHUB_IMAGE:$DOCKERHUB_TAG -t $DOCKERHUB_NAMESPACE/$DOCKERHUB_IMAGE:latest deployment/docker/
docker login -u $DOCKERHUB_USER -p $DOCKERHUB_PASS
docker push $DOCKERHUB_NAMESPACE/$DOCKERHUB_IMAGE:$DOCKERHUB_TAG
docker push $DOCKERHUB_NAMESPACE/$DOCKERHUB_IMAGE:latest