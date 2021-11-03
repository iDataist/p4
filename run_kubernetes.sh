#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=hwdgrmy/api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=$dockerpath apipod --labels app=api

# kubectl create deployment --image=python python-app
# kubectl run --image=$dockerpath python-app --labels app=api

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward apipod 8000:80
