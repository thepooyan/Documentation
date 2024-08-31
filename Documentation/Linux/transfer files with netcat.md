---
date: "2024-08-29"
name: transfer files with netcat
time: 21:20
---

# transfer files with netcat

```bash
netcat -l 1234 > file.txt
cat folanfile | netcat 192.168.1.102 1234 -q 0 # -q 0 closes the connection after file input is done
```
