#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=scientronic92/flaskapp:5

# Step 2
# updating the running container with kubernetes
kubectl rolling-update flaskapp flaskapp-1 --image=scientronic92/flaskapp:5


