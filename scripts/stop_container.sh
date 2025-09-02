#!/bin/bash
set -e

echo "Stopping and removing all running containers..."
containerid=`docker ps | awk -F " " '{print $1}'`
docker rm -f $containerid
