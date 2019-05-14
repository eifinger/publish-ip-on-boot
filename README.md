# publish-ip-on-boot

Publish IP to MQTT Broker on Boot. For use with PiBakery

## Usage

1. Get the setup script and execute it

```bash
wget https://raw.githubusercontent.com/eifinger/publish-ip-on-boot/master/setup.sh
chmod +x setup.sh
./setup.sh
```

1. Change the wpa_supplicant.conf file and add the wifi you want to deploy your RPI to
1. Reboot
1. Use a MQTT Client of your choice e.g. [MQTTBox](http://workswithweb.com/mqttbox.html)
1. Connect to the broker *broker.hivemq.com* and listen on topics *pibakery-eifinger/ip*
