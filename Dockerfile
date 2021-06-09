# build environment
FROM ubuntu:latest as build

# Instalación de dependencias necesarias
RUN apt -y update
RUN apt -y upgrade 
RUN apt-get -y install build-essential libssl-dev liblzo2-dev libpam0g-dev vim netcat

WORKDIR /demo

# Bajamos release de openvpn:
ADD https://swupdate.openvpn.org/community/releases/openvpn-2.5.2.tar.gz ./openvpn-2.5.2.tar.gz

# Descomprimir
RUN tar -xvzf openvpn-2.5.2.tar.gz

WORKDIR /demo/openvpn-2.5.2

# # Ejecutar el programa configure:
RUN ./configure

# # Compilar:
RUN make

# # Instalar
RUN make install

EXPOSE 1194/udp
EXPOSE 1194/tcp