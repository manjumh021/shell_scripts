#!/bin/bash

# Stop and disable MongoDB service
sudo systemctl stop mongod
sudo systemctl disable mongod

# Remove MongoDB packages
sudo apt-get purge mongodb-org* -y

# Remove MongoDB data and configuration files
sudo rm -r /var/log/mongodb
sudo rm -r /var/lib/mongodb
sudo rm -r /etc/mongod

# Remove MongoDB repository
sudo rm /etc/apt/sources.list.d/mongodb-org-*.list

# Update package list
sudo apt-get update

echo "MongoDB and related files have been uninstalled and removed."
