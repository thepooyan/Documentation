---
id: Network with jadi
aliases: []
tags: []
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
ip change add 192.168.1.20/24 dev [name of the network card]
ping [ip] # obviously

# address resolution protocol
arp # see the arp table
arp -d [ip] # remove an ip from arp table
```
[[TCP-UDP]]
[[DHCP]]
[[netmask]]
[[private-ips]]

# ip and netmask
first part => netwrok
second part => host
192.168.1.101
255.255.255.0 (/24)

if host is:
- all zeros     =>  netwrok address
- all ones      =>  borad cast

- learn wireshark and tcp dump
