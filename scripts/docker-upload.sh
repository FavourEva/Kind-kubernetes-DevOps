#!/usr/bin/env bash

# This script assumes that an image has been built using 'run_docker-compose.sh'

# Step 1:
# Define the Docker image path and your Docker Hub username
dockerpath=kindimage
user=favoueva

# Step 2:
# Authenticate with Docker Hub and specify the image to work with
echo "Docker ID and Image: $dockerpath"
docker login -u $user

# Step 3:
# Tag the local image with your Docker Hub username
docker tag $dockerpath:latest $user/$dockerpath

# Step 4:
# Push the tagged image to your Docker Hub repository
docker push $user/$dockerpath
