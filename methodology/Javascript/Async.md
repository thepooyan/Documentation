```js
const getData = async() => {

	const data1 = getData(1)
	const data2 = getData(2)

	const result = await Promise.all([data1, data2])
	return result
}
```

use above code instead of this:
```js
const getData = async() => {

	const data1 = await getData(1)
	const data2 = await getData(2)

	const result = [data1, data2]
	return result
}
```


```js
for (await item in items) {}
if (await itme === 'sdkfljsdf') //code...
```
