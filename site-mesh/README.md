For each host in each site 'i' enter to the corresponding folder and set up both the client and the server.

On the site router configure the following:
- port foward (or dest nat) the port 1194 to the private ip address of the host that will be running the openvpn server and also port 1194
- create a static route for the subnet 10.[i].0.0/24, 10.[i+1 % 3].0.0/24 and the two local subnets that the openvpn client and server are required to be connected, to the host that runs the openvpn server

On the host enable port forwarding:
sudo echo 1 > /proc/sys/net/ipv4/ip_forward

### Client

Execute ./run-client.sh IP
  - IP - is the public ip of the [i+1 % 3] openvpn server
Note: the password of the certificate is 'sitio' and the site number, e.g 'sitio1'.

### Server

Then start the server ./run-server.sh IP_OF_THE_LOCAL_SUBNET IP_OF_THE_SUBNET_OF_SITE_[i-1 % 3]:
  - TIP_OF_THE_SUBNET - is the address of the local network of the server for sharing with the client. 
  - IP_OF_THE_SUBNET_OF_SITE_[i-1 % 3] - is the address of the local network of the client. 
  
Note: the cert password is 'sitio' + i, ie 'sitio1'.
