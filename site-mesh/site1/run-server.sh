#!/bin/bash

if [ $# -eq 2 ]
then
	rm ./ccd/*
	cp ./ccd_template ./ccd/sitio3
	sed -i "s/<local subnet>/$2/" ./ccd/sitio3 
	sudo openvpn --push "route $1 255.255.255.0" --config server.conf --route $2 255.255.255.0
else
	echo "run-server <local subnet (site 1)> <remote subnet (site 3)>"
fi

