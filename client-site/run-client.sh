#!/bin/bash

if [ $# -eq 2 ]
then
	sudo openvpn --remote $1 1194 --cert ../client-key-crt/$2.crt --key ../client-key-crt/$2.key --config client.conf
else
	echo "Number of parameters must be 2! First is public ip address of the vpn serven and the second the name of the sample pairs of keys (facu, peio, fer)"
fi
