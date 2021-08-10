#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="kelphils/udacity-project"

# Step 2:  
# Authenticate & tag
docker login -u kelphils -p c539cb92-42f3-47a4-a2e4-256b32d1421a
docker tag proj-app kelphils/udacity-project
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push kelphils/udacity-project
