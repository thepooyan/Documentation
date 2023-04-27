### general structure:
```js
const express = require('express');
const app = express();

app.get('/', (req,res)=>{
    return res.status(200).send("this is response")
})
  
const PORT = 3210;
app.listen(PORT, () => {console.log(`listening on port ${PORT}`);})
```

1. [[Environmant variables]] 
2. [[Req params]] 
3. [[Json parse middleware]] 
4. [[Joi]] 
5. Requests
	1. [[Post Request]] 
	2. [[PUT Request]] 
	3. [[Delete Request]] 

[[simple rest api sample]] 