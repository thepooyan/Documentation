```bash
docker run -v /newFolder:/var/lib/mysql mysqlImage
```
map the defualt mysql data folder (var/lib/mysql folder) to in external folder.
now the outer folder will be mounted inside the container and data will be safe