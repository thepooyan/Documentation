### general structure:
```js
const express = require('express');
const app = express();

app.get('/', (req,res)=>{
	return res.status(123).send("this is response")
})
app.post
app.put
app.delete

app.listen(3000, ()=>console.log(`listening on port 3000...`))
```

1. [[Environmant variables]] 
2. [[Req params]] 
3. [[Json parse middleware]] 
4. [[Joi]] 
5. Requests
	1. [[Post Request]] 
	2. [[PUT Request]] 
	3. [[Delete Request]] 