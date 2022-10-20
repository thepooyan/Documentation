```ts
function hi(name:string | undefined) {
	if (name)
		console.log(name.toUpperCase())
	else
		console.log('hola!')
}
```