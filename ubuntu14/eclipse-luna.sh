#!/bin/bash
sudo apt-get update
sudo apt-get -y install openjdk-7-jdk
cd /tmp
wget ftp://mirror.switch.ch/mirror/eclipse//technology/epp/downloads/release/luna/SR2/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz
sudo mv eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz /opt/
sudo tar -xvf /opt/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz -C /opt
sudo rm -f /opt/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz

cat > /tmp/eclipse.desktop <<EOF
[Desktop Entry]
Name=Eclipse
Type=Application
Exec=/opt/eclipse/eclipse
Terminal=false
Icon=/opt/eclipse/icon.xpm
Comment=Integrated Development Environment
NoDisplay=false
Categories=Development;IDE
Name[en]=eclipse
EOF

sudo mv /tmp/eclipse.desktop /usr/share/applications/eclipse.desktop
