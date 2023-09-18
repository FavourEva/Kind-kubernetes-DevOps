#!/usr/bin/env bash

# Step 1:
# Download the HashiCorp GPG (GNU Privacy Guard) key from the specified URL and save it as
# /usr/share/keyrings/hashicorp-archive-keyring.gpg. This keyring file will be used to verify
# the authenticity of HashiCorp's software packages.

wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# Step 2:
# Add a new software repository configuration for HashiCorp products to your system.
# This configuration specifies the repository URL with [signed-by] pointing to the GPG keyring file
# we downloaded earlier. The $(lsb_release -cs) command dynamically inserts your Linux distribution's
# codename into the URL. The resulting configuration is saved in the /etc/apt/sources.list.d/hashicorp.list file.

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

# Step 3:
# Update the local package database and install the Terraform package.
# 'sudo apt update' refreshes the list of available software packages.
# 'sudo apt install terraform' installs the Terraform tool if it's available in the newly added HashiCorp repository.

sudo apt update && sudo apt install terraform
