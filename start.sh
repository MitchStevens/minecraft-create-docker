#!/bin/bash
docker run \
  -d \
  -p 25565:25565 \
  --name serb \
  -v $PWD/world:/data/world \
  --restart=on-failure \
  minecraft-create-server
