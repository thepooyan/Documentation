```js
app.get('env') //returns the current environment. default is 'development'
```
```bash
export NODE_ENV=production    //changeing environment to productions
```

you can also make lines run depending on the environment situatuion:
```js
if (app.get('env')==='development') {
	app.use(morgan('tiny')) //or any other code...
}
```

refrence: [[Config based on Env]] 