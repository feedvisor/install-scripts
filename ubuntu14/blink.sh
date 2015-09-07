#!/bin/bash
sudo echo ""

echo -e "deb    http://ag-projects.com/ubuntu trusty main\ndeb-src http://ag-projects.com/ubuntu trusty main" | sudo tee /etc/apt/sources.list.d/ag-projects.list

wget -O - http://download.ag-projects.com/agp-debian-gpg.key | sudo apt-key add -

sudo apt-get update
sudo apt-get -y install blink
