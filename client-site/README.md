![image](https://user-images.githubusercontent.com/12635493/121478354-5223e800-c99f-11eb-9b2f-d989649492cd.png)

### Client

Execute ./run-client.sh IP CERT
  - IP - is the public ip of the openvpn server
  - CERT - is the name of the sample pair or cert, key to be used. Options are facu, peio and fer, and their passwords are respectively "facu", "messirve" and "titihenry".

### Server

On the site router configure the following:
- port foward (or dest nat) the port 1194 to the private ip address of the host that will be running the openvpn server and also port 1194
- create a static route for the subnet 10.8.0.0/24 to the host that runs the openvpn server

On the host enable port forwarding:
sudo echo 1 > /proc/sys/net/ipv4/ip_forward

Then start the server ./run-server.sh IP_OF_THE_SUBNET:
  - TIP_OF_THE_SUBNET - is the address of the local network of the server for sharing with the client. 

