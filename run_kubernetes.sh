#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
#docker tag de03d1103cf6 pesh1212/project:latest
#docker push $dockerpath:latest

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=pesh1212/project

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run projectpod --image=$dockerpath 


# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
kubectl port-forward projectpod 8000:80

#delete
#kubectl delete pods --all
