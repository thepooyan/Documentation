```bash
# To stop your web server, type:
sudo systemctl stop nginx

# To start the web server when it is stopped, type:
sudo systemctl start nginx

# To stop and then start the service again, type:
sudo systemctl restart nginx

# If you are making configuration changes, Nginx can often reload without dropping connections. To do this, type:
sudo systemctl reload nginx

# By default, Nginx is configured to start automatically when the server boots. If this is not what you want, you can disable this behavior by typing:
sudo systemctl disable nginx

# To re-enable the service to start up at boot, you can type:
sudo systemctl enable nginx
```