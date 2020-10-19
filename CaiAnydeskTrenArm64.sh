 #!/bin/bash
sudo dpkg --add-architecture armhf
sudo apt update && sudo apt upgrade -y
sudo apt install -y libraspberrypi0:armhf libraspberrypi-dev:armhf libraspberrypi-doc:armhf libraspberrypi-bin:armhf libraspberrypi0:armhf libraspberrypi-dev:armhf libraspberrypi-doc:armhf libraspberrypi-bin:armhf libatk-adaptor:armhf libgail-common:armhf libcanberra-gtk-module:armhf libpolkit-gobject-1-0:armhf
sudo wget -O /tmp/anydesk_6.0.1-1_armhf.deb "https://download.anydesk.com/rpi/anydesk_6.0.1-1_armhf.deb"
sudo dpkg -i --force-all /tmp/anydesk_6.0.1-1_armhf.deb
sudo apt -f install
wget -O /tmp/lib.tgz https://github.com/ngocnguyenhong/raspberrypi4/raw/main/lib.tgz
tar -C /tmp -xvzf /tmp/lib.tgz
sudo mkdir /opt/vc
sudo cp -r /tmp/lib /opt/vc
sudo echo '/opt/lib/vc' > /tmp/vc2.conf
sudo cp /tmp/vc2.conf /etc/ld.so.conf.d/vc2.conf
sudo ldconfig
anydesk --start-service
