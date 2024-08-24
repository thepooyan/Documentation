---
date: "2024-08-19"
name: set dns
time: 16:41
---

# set dns with network manager

1. change dns:
```bash
nmcli con mod Salmani_5G ipv4.dns 178.22.122.100 185.51.200.2
```

2. restart network manager
```bash
sudo systemctl restart NetworkManager
# or
service NetworkManager restart

```
3. make sure:
```bash
cat /etc/resolv.conf
```
