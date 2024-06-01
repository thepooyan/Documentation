located at: /etc/nginx/sites-available/default
```
server_name yourdomain.com www.yourdomain.com;
location / {
	proxy_pass http://localhost:3000; #whatever port your app runs on
	proxy_http_version 1.1;
	proxy_set_header Upgrade $http_upgrade;
	proxy_set_header Connection 'upgrade';
	proxy_set_header Host $host;
	proxy_cache_bypass $http_upgrade;
}
```

# then test the config
```bash
sudo nginx -t
```


# then reload the config
```bash
# It's like reload but for major config changes
sudo service nginx restart
```