---
search: search about fetch api, search about ".json()" func
category: Javascript
---
## fetch api
a browser native function that allows preforming ajax requests in form of a promise
```jsx
fetch("http://www.google.com").then(func).catch(func2);
```

the fetch functions returns a promise containing a response object, with headers, status and so on. it also returns a function ".json()" which will return the response if form of JSON.
*the json function also returns a promise. so in order to extract data, two 'then's should be used:*
```jsx
fetch("URL").then(res=>{ //the response itself containing status and all headers
	return res.json(); //the json function that will return a promise containing data
}).then(data=>{ //the actual data
	console.log(data)
})
```

## post, put, delete

to send post requests, first turn data you wanna send into JSON, then user below syntax to send it.
```jsx
let object = {...};
let body = JSON.stringify(object);
let headers = {"Content-Type":"application/json"};
fetch("url", {method: "post", headers: headers, body: body})

```
***
refrence: **fetch api with [[Async Await]]** 