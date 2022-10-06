```js
app.post((req,res)=>{

const item = {name: req.body.name, price: req.body.price}
arry.push(item)
res.send(item)

})
```

- *it is customary to send the created item back if the process is successfull*
- *parsing request json is enabled using a middleware: [[Json parse middleware]]*
- 