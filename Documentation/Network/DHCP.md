---
id: DHCP
aliases: []
tags: []
---

a udp broadcast on port 67 (DHCP server) to get ip

best package for arch (isc): `dhcp`
(outdated. use kea instead)

ports:
    server  67
    client  68

server: [[isc-dhcp]]
client: [[dhcp-client]]

# running a local DHCP server on your machine in a netwrok is extremely dangerous!!

