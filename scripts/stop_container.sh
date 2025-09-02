#!/bin/bash
set -e

echo "Stopping and removing all running containers..."

# Stop all containers if any are running
if [ "$(docker ps -q)" ]; then
  docker stop $(docker ps -q)
  docker rm $(docker ps -aq)
  echo "All containers stopped and removed."
else
  echo "No running containers found."
fi
