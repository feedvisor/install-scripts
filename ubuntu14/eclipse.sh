#/bin/bash
apt-get update
apt-get install openjdk-7-jdk
cd /tmp && \
wget ftp://mirror.switch.ch/mirror/eclipse//technology/epp/downloads/release/luna/SR2/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz && \
mv eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz /opt/
tar -xvf /opt/eclipse-jee-luna-SR2-linux-gtk-x86_64.tar.gz -C /opt

cat > /usr/share/applications/eclipse.desktop <<EOF
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
