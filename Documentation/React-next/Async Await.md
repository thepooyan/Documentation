---
search: is try/catch only for async/await?
---
an await line, is a line that makes the function wait for it to get done.
an async function is a function that has await commands in it.
async functions run asynrochosly alongside the program.

*async await is commonly used to get data from servers*

syntax:
```jsx
async function getData() {
	const response = await fetch("URL");
	const data = await response.json();
	console.log(data)
}
```

### try/catch
```jsx
async function getData() {
	try {
		const response = await fetch("URL");
		if (response.status != 200)
		throw new Error(`error with status: ${response.status}`)
	}
	catch(e) {
		console.log(e)
	}
	
	const data = await response.json();
	console.log(data)
}
```