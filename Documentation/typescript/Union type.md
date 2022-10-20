the type of the variable can be both number or string
```ts
function convert(weight: number | string):number {
	if (typeof weight === 'number')
		return weight
	else
		return parseInt(weight)
}
```