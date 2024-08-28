---
date: "2024-08-28"
name: Dockerfile
time: 13:46
---

# general
```dockerfile
from node:20-alpine  //get the base image from docker hub

workdir /app

copy package.json .

run npm i

copy . .

expose 30000

cmd ["npm", "start", "--host"]


```
# more
```
entrypoint ["sleep"] //when called 'docker run image 5' 5 will be after sleep
```
