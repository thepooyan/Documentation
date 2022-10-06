for safe keeping passwords in config files, we store them in env variables and map them to be accessible inside config object from [[Config based on Env]];

 1. set the variable
```cli
export app_password=1234 
```

2. map, usuing a file in config folder called **"custom-environment-variables.json"** as follows:
```json
{
"mail": {
		"password": "app_password"
	}
}
```

now it will be accessible.
*the name of the custom json file is very important*