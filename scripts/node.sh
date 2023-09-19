#!/usr/bin/env bash

# Step 1: Install Node Version Manager (nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

# Step 2: Activate nvm
. ~/.nvm/nvm.sh

# Step 3: Install the Latest Long-Term Support (LTS) Version of Node.js
nvm install --lts

# Step 4: Verify That Node.js Is Installed and Running
node -e "console.log('Node.js ' + process.version is running successfully)"

echo -e "========\nAdditional Installation for Ubuntu"

# Additional Ubuntu Installation: Update Package List
sudo apt update

# Additional Ubuntu Installation: Install Node.js
sudo apt install nodejs -y

# Additional Ubuntu Installation: Install npm (Node Package Manager)
sudo apt install npm -y

# Download the Latest Version of npm Globally
npm install -g npm

# Step 5: Check the Installed Versions
node -v
npm -v
