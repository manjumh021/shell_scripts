#!/bin/bash

# Import the public GPG key for MongoDB
curl -fsSL https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -

# Add the MongoDB repository
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list

# Update package list
sudo apt update

# Install MongoDB
sudo apt install mongodb-org -y

# Change the ownership of the socket file to the MongoDB user and group
sudo chown mongodb:mongodb /tmp/mongodb-27017.sock

# Modify the permissions to allow read, write, and execute for the owner and group
sudo chmod 770 /tmp/mongodb-27017.sock

# Start and enable the MongoDB service
sudo systemctl start mongod
sudo systemctl enable mongod

# Check the status of the MongoDB service
sudo systemctl status mongod
