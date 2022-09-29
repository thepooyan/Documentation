```js
function currySum(a) {
	return function(b) {
		return function(c) {
			return a + b + c;
		}
	}
}
  
// let result = currySum(1)(2)(3);
// console.log(result);
  
let add1 = currySum(1);
let add2 = add1(2);
let add3 = add2(3);
  
console.log(add3)
```