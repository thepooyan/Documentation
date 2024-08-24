---
date: "2024-08-10"
name: net-filter
time: 15:10
---

# net-filter

the kernal firewal of linux

```bash
iptables -L -n

iptable -A INPUT -s 192.168.1.2 -j DROP
# add rule in input traffic if source is as said, drop the packet
```
