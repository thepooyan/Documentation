```js
function outer() {
	let count = 0;
		function inner() {
			count++;
			console.log(count)
		}
	return inner;
}
const fn = outer();
fn()
fn()
```
when returning an inner function with an outer function, the variables decalred in the outer function will be return with the inner funtion as well. the combination of the two is calld *closure*. 
since the variables is decalred once and used twice, the output will be:
```js
//1
//2
```