#!/bin/bash
sudo echo ""

echo "deb http://downloads.hipchat.com/linux/apt stable main" | sudo tee /etc/apt/sources.list.d/atlassian-hipchat.list

wget -O - https://www.hipchat.com/keys/hipchat-linux.key | sudo apt-key add -

sudo apt-get update
sudo apt-get -y install hipchat
