#!/bin/bash
# CAH 2022-04-21 

docker stop homeassistant  2>/dev/null
docker rm homeassistant    2>/dev/null

docker ps
