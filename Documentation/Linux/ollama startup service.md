---
date: "2024-08-22"
name: ollama startup service
time: 13:19
---

# ollama startup service

Create a user for Ollama:
```
sudo useradd -r -s /bin/false -m -d /usr/share/ollama ollama
```
Create a service file in `/etc/systemd/system/ollama.service:`
```service
[Unit]
Description=Ollama Service
After=network-online.target

[Service]
ExecStart=/usr/bin/ollama serve
User=ollama
Group=ollama
Restart=always
RestartSec=3

[Install]
WantedBy=default.target
```
Then start the service:
```
sudo systemctl daemon-reload
sudo systemctl enable ollama
```
