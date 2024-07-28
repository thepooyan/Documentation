---
id: isc-dhcp
aliases: []
tags: []
---


best package for arch (isc): `dhcp`
(outdated. use kea instead)

config: `/etc/default/isc-dhcp-server`

add interface in folloing line:

```
INTERFACESv4="folan"
```

then:
- uncommnet the authorize thing
- uncomment the range

and dhcp is good to go!

# commands
```bash
systemctl retart dhcp
systemctl status dhcp
```
