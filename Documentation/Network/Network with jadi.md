---
date: "2024-07-30"
name: Network with jadi
time: 14:59
---

# Network with jadi

layers:

application
presentation
session
transport
network (router - ip)
data link (switch and ethernet - mac address)
physical

# mac address
*a uniqe code for every hardware created*
- is used to navigate in second layer

```bash
ip addr show # show network cards and their ip

# /24 means net mask is : 255.255.255.0
ip addr add 192.168.1.20/24 dev [name of the network card]
ip addr change 192.168.1.20/24 dev [name of the network card]
ip addr del 192.168.1.20/24 dev [name of the network card]
ping [ip] # obviously

# address resolution protocol
arp # see the arp table
arp -d [ip] # remove an ip from arp table
```
[[TCP-UDP]]
[[DHCP]]
[[netmask]]
[[private-ips]]
[[ip route]]
[[traceroute]]
[[nslookup]]
[[dig]]
[[mtr]]
[[netcat-telnet]]

# ip and netmask
first part => netwrok
second part => host
192.168.1.101
255.255.255.0 (/24)

if host is:
- all zeros     =>  netwrok address
- all ones      =>  borad cast

- learn [[wireshark]] and tcp dump
