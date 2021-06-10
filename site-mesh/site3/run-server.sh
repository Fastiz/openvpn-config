#!/bin/bash

if [ $# -eq 2 ]
then
	rm ./ccd/*
	cp ./ccd_template ./ccd/sitio2
	sed -i "s/<local subnet>/$2/" ./ccd/sitio2 
	sudo openvpn --push "route $1 255.255.255.0" --config server.conf --route $2 255.255.255.0
else
	echo "run-server <local subnet (site 3)> <remote subnet (site 2)>"
fi

