#!/bin/bash

if [ $# -eq 1 ]
then
	sudo openvpn --push "route $1 255.255.255.0" --config server.conf
else
	echo "Enter as parameter the local subnet to be routed from client"
fi

