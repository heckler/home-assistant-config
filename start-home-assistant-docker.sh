#!/bin/bash

# Home assistant startup script for docker
# CAH 2022-04-21 
#
# from https://www.home-assistant.io/installation/linux#install-home-assistant-container

mkdir -p /tmp/home_assistant

docker stop homeassistant > /dev/null 2>&1
docker rm homeassistant   > /dev/null 2>&1

docker run -d \
  --name homeassistant \
  --privileged \
  --restart=unless-stopped \
  -e TZ=America/Sao_Paulo \
  -v /PATH_TO_YOUR_CONFIG:/tmp/home_assistant \
  --network=host \
  ghcr.io/home-assistant/home-assistant:stable

docker logs --follow homeassistant
