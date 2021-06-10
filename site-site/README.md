

### Client

On the site router configure the following:
- create a static route for the subnet 10.8.0.0/24 and the remote local subnet to the host that runs the openvpn server

Execute ./run-client.sh IP
  - IP - is the public ip of the openvpn server
Note: the password of the certificate is 'sitio1'.

On the host enable port forwarding:
sudo echo 1 > /proc/sys/net/ipv4/ip_forward

### Server

On the site router configure the following:
- port foward (or dest nat) the port 1194 to the private ip address of the host that will be running the openvpn server and also port 1194
- create a static route for the subnet 10.8.0.0/24 and the client's local subnet to the host that runs the openvpn server

On the host enable port forwarding:
sudo echo 1 > /proc/sys/net/ipv4/ip_forward

Then start the server ./run-server.sh IP_OF_THE_LOCAL_SUBNET IP_OF_THE_CLIENT_SUBNET:
  - TIP_OF_THE_SUBNET - is the address of the local network of the server for sharing with the client. 
  - IP_OF_THE_CLIENT_SUBNET - is the address of the local network of the client. 
  
Note: the cert password is 'sitio1'.
