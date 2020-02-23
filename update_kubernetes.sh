#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=scientronic92/flaskapp:5

# Step 2
# updating the running container with kubernetes
# kubectl rolling-update flaskapp flaskapp-1 --image=scientronic92/flaskapp:5

kubectl set image deployment flaskapp flaskapp=nginx --record

# kubectl apply -f deployapp.yml


# Step 3:
# view pods changes

kubectl get pods

kubectl rollout status deployment flaskapp
