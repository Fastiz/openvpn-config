### Client

Open config.conf inside client folder and update the following line to the public ip of the server's router and the port that is listening for openpvn (default 1194):
remote 190.133.55.202 1194

Then run to start the tunnel:
sudo openvpn ./client/config.conf

### Server

On the site router configure the following:
- port foward (or dest nat) the port 1194 to the private ip address of the host that will be running the openvpn server and also port 1194
- create a static route for the subnet 10.8.0.0/24 to the host that runs the openvpn server

On the host enable port forwarding:
sudo echo 1 > /proc/sys/net/ipv4/ip_forward (on linux)

Open config.conf inside server folder and change the following line to the ip and mask of the local subnet of the site:
push "route 192.168.1.0 255.255.255.0"

Then run to start the server:
sudo openvpn ./server/config.conf

