#!/bin/bash
set -e

echo "Stopping and removing all running containers..."
containerid=`docker ps -q`
docker rm -f $containerid
