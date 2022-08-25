#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Kube
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🚀
# @raycast.packageName kube

# Documentation:
# @raycast.description Start Minikube
# @raycast.author BalliAsghar


# Check if docker is running
if ! docker info > /dev/null 2>&1; then
  open /Applications/Docker.app
fi

# do while loop to check if docker is running and if not, keep trying
while ! docker info > /dev/null 2>&1; do
  sleep 1
done


# check if minikube is running and start it if not
if ! minikube ip > /dev/null 2>&1; then
  echo "Starting... Minikube"
  minikube start
  echo "Minikube is now running"
  exit 0
fi

