 ```
location /admin {
	alias /path/to/your/react/app/build;  # Replace with the path to your React app's build directory
	try_files $uri $uri/ /admin/index.html;
}
```