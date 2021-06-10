#!/bin/bash

if [ $# -eq 1 ]
then
	sudo openvpn --remote $1 1194 --cert ../client-key-crt/sitio1.crt --key ../client-key-crt/sitio1.key --config client.conf
else
	echo "run-client <public ip of site 2 router>"
fi
