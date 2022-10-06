---
search: axios or ajax?
done: true
---
axios is popular ajax library. [github page](https://github.com/axios/axios)!
installation via npm: `npm i axios` (*cdn is available in github*)

usage
```js
axios({
	method: 'get', //if not specifed, will be get automaticly
	url: 'URL',
	params: {id: 5} //will generate query string: URL?id=5
}).then(res=>{console.log(res.data) //response object, containing status, data, ...
}).catch(error=>{console.log(error)})
```

### Alternative syntax
```js
axios.get("URL", { params: {...} })
```

### post
```js
axios.post("URL", object); //will automaticly turn the object to json
```