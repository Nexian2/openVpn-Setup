#!/bin/bash

apt update
apt install openvpn easy-rsa -y

make-cadir ~/easy-rsa
cd ~/easy-rsa

./easyrsa init-pki
./easyrsa build-ca nopass
./easyrsa gen-req server nopass
./easyrsa sign-req server server
./easyrsa gen-dh

cp pki/ca.crt pki/private/server.key \
pki/issued/server.crt pki/dh.pem /etc/openvpn/

sysctl -w net.ipv4.ip_forward=1

iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o eth0 -j MASQUERADE

systemctl start openvpn@server
systemctl enable openvpn@server
