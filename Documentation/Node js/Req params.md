```js
app.get('/courses/:courseCate/:courseID', (req, res) => {
	console.log(req.params) //returns: {courseCate: 'category', courseID: 12}
})
```