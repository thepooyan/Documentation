```cli
docker exec nameOfCont cat /etc/hosts    //run a command on an existing container
docker run ubunto sleep 5   //run a container with an initial command
docker run -d name //run the cont in the background
docker logs ContainerName//see the outuput as a logfile only for background conts
docker attach contID  //show the output of the container??
docker inspect cont  //more details about a container
```