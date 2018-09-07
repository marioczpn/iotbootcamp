#!/bin/bash

echo "1) Setup"
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

echo "2) Installation"
sudo apt-get install -y nodejs

echo "3) Checking installation"
node -v
