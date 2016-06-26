#!/bin/bash

cd /tmp/

wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.6.2-yakkety/linux-headers-4.6.2-040602_4.6.2-040602.201606100516_all.deb

wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.6.2-yakkety/linux-headers-4.6.2-040602-generic_4.6.2-040602.201606100516_amd64.deb

wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.6.2-yakkety/linux-image-4.6.2-040602-generic_4.6.2-040602.201606100516_amd64.deb

sudo dpkg -i *.deb

systemctl stop docker
 
CONFIGURATION_FILE=$(systemctl show --property=FragmentPath docker | cut -f2 -d=)
cp $CONFIGURATION_FILE /etc/systemd/system/docker.service
 
perl -pi -e 's/^(ExecStart=.+)$/$1 -s overlay/' /etc/systemd/system/docker.service
 
systemctl daemon-reload
systemctl start docker

echo "reboot machine now"
