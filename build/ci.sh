#!/bin/sh
set -ex

RELEASE_IMAGE_PREFIX="linclaus/ngrok"
NGROK_DOMAIN=$1

if [ -z "$NGROK_DOMAIN" ];then
  echo "NGROK_DOMAIN is empty"
  return 1
fi

echo 'build and push docker image'
docker build -t $RELEASE_IMAGE_PREFIX-$NGROK_DOMAIN . -f build/pkg/Dockerfile --build-arg NGROK_DOMAIN=$NGROK_DOMAIN \
        && docker push $RELEASE_IMAGE_PREFIX-$NGROK_DOMAIN