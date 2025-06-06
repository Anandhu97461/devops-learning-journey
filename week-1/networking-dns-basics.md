# Networking & DNS Basics

## Networking
- Devices connected via switches → `ip addr add` used to assign IPs.
- Routers connect multiple networks → configured as gateway. 
- `ip route add default via [gateway IP]` → Sets default route. For Example: `ip route add 192.168.2.0/24 via 192.168.1.1`

## DNS Resolution Flow
- `/etc/hosts` → Local resolution first.
- `/etc/resolv.conf` → Defines DNS servers (e.g. `8.8.8.8` Google DNS).
- `/etc/nsswitch.conf` → Controls resolution order.
- Root DNS → TLD (.com) DNS → Domain DNS → IP.

## DNS Record Types
- A → IPv4 address
- AAAA → IPv6 address
- CNAME → Alias to another DNS name
