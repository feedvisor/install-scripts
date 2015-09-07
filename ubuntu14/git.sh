#!/bin/bash

sudo apt-get install git

mv ~/.bashrc ~/.bashrc.save$(date +%Y%m%d-%H%M)

cp ./.bashrc ~/.bashrc

source ~/.bashrc
