```js
const var = new Promise((res,rej) => {
	resolve(1)
})
const var2 = new Promise((res,rej) => {
	resolve(1)
})
Promise.all([var, var1]).then(...)
Promise.race([var, var1]).then(...)
```