#!/bin/bash

# Function to check and install a package
install_if_missing() {
    local package=$1
    if ! dpkg -l | grep -q "^ii.*$package"; then
        echo "Installing $package..."
        sudo apt-get install -y $package
    else
        echo "$package is already installed."
    fi
}

# Update package list
echo "Updating package list..."
sudo apt-get update -y

# Check and install each package
install_if_missing docker.io
install_if_missing curl
install_if_missing git
install_if_missing python3
install_if_missing nodejs

# Clean up unnecessary files
echo "Cleaning up unnecessary files..."
sudo apt-get clean
sudo rm -rf /var/lib/apt/lists/*

# Verify installations
echo "Verifying installations..."
docker --version
curl --version
git --version
python3 --version
node --version

echo "All required dependencies are installed and verified!"
