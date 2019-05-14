#!/bin/bash
sudo apt-get update
sudo apt-get install mosquitto-clients -y
wget https://raw.githubusercontent.com/eifinger/publish-ip-on-boot/master/publish-ip.sh
wget https://raw.githubusercontent.com/eifinger/publish-ip-on-boot/master/publiship.service
chmod +x /home/pi/publish-ip.sh
sudo mv /home/pi/publiship.service /etc/systemd/system/publiship.service
sudo systemctl enable publiship.service
sudo systemctl start publiship.service
