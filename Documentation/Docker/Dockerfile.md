```Dockerfile
from node:alpine  //get the base image from docker hub

run echo hello!

copy . /app
workdir /app
cmd node app.js

entrypoint ["sleep"] //when called 'docker run image 5' 5 will be after sleep
cmd ["5"] // kinda the default one if not said as abouv0e
```