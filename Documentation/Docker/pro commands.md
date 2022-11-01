
## running cli applications
```
docker run -i (interactive mode so you can get user input in terminal)
docker run -t (bind terminal to the application so it can prompt you)

> docker run -it   //perfect for console applications
```



## mapping docker ports
you can use the ip of each container to connect to them. but the ip is local. for outside of local machines to be able to access it, the target ips have to be mapped to diffrent ports on the local machine.
```cli
docke run -p 80:5000 imageName   //map the port 5000 of container to port 80 of local machine
```
 