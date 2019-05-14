#!/bin/bash
ip=$(ifconfig wlan0|grep -Po 't addr:\K[\d.]+')
mosquitto_pub -t "pibakery-eifinger/ip" -h "broker.hivemq.com" -m "$ip"
