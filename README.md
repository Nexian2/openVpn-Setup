# OpenVPN install

This repository contains the implementation of Secure Connectivity
based on the competition guideline:

- OpenVPN Server Deployment
- SSH Hardening
- SSH Tunneling Enforcement
- Port Whitelisting (Deny All Policy)

## Objective

Ensure that:
1. Client can access server only via VPN.
2. Web server can only be accessed through SSH tunneling.
3. All non-essential ports are blocked.

---

## Architecture Overview

Client → VPN Tunnel → Server  
Web Access → SSH Tunnel Only  

---

## Services

| Service   | Port  | Access Type |
|-----------|-------|------------|
| OpenVPN   | 1194  | UDP        |
| SSH       | 2222  | TCP        |
| HTTP      | 80    | Localhost only |

---

## Security Controls Implemented

- Default DROP firewall policy
- SSH root login disabled
- Password policy enforced
- Web server bound to localhost
- VPN certificate authentication
