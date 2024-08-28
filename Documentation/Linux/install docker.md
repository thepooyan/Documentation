---
date: "2024-08-25"
name: install docker
time: 14:11
---

# install docker

```bash
sudo pacman -S docker

sudo systemctl start docker.service
sudo systemctl enable docker.service

sudo usermod -aG docker $USER # add current user to the docker group
```
