# build environment
FROM ubuntu:latest as build

# Instalación de dependencias necesarias
RUN apt -y update
RUN apt -y upgrade 
RUN apt-get -y install build-essential libssl-dev liblzo2-dev libpam0g-dev

WORKDIR /demo

COPY ./client-site/server ./

# Bajamos release de openvpn:
ADD https://swupdate.openvpn.org/community/releases/openvpn-2.5.2.tar.gz ./openvpn-2.5.2.tar.gz

# Descomprimir
RUN tar -xvzf openvpn-2.5.2.tar.gz


# # # Ejecutar el programa configure:
# RUN configure

# # # Compilar:
# RUN make

# # # Instalar
# RUN make install

EXPOSE 1944