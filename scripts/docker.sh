#!/usr/bin/env bash

# Step 1:
# Download the installation script for the latest stable release of Docker from https://get.docker.com/
# and execute it with elevated privileges (sudo) to install Docker on your Linux system.
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Step 2:
# Verify the installation by checking the installed Docker version.
docker -v
