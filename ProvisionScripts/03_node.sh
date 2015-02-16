#!/bin/bash

echo "Installing node"
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs

echo "installing global node packages"
cd /vagrant
npm install -g node-inspector


echo "installing node packages from package.json"
npm install --no-bin-links