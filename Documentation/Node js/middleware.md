# middleware in express
```js
app.use(func) //adding a middleware to the req-res pipeline

function func(req, res, next) { //these three parameters are passed to by app
	//some code...
	next(); //passes control the next middleware
}
```
*Refrence:* [[Json parse middleware]]

# some important middlewares
1. ![[Express static]] 
2. [[Urlencoded]] 
3. [[Helmet]]: helps securing apps by adding various headers to http requests
4. [[morgan]]: logs the recieved http requests in various formats
5. [[cors]]: cros origin control