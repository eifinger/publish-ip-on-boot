#!/bin/bash
ip=$(ifconfig wlan0 | grep "inet " | awk -F'[: ]+' '{ print $3 }')
mosquitto_pub -t "pibakery-eifinger/ip" -h "broker.hivemq.com" -m "$ip"
