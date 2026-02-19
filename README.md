# OpenVPN Server Deployment 
## Objective

- Deploy OpenVPN Server
- Generate client certificates
- Allow secure client-to-server communication
- Client must be able to ping server via VPN network

## VPN Network

Server VPN IP : 10.8.0.1  
Client VPN IP : 10.8.0.2+

Protocol       : UDP  
Port           : 1194  

## Verification

After connection:

ping 10.8.0.1

Must return reply.
- VPN certificate authentication
