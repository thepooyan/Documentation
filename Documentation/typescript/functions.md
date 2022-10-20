anotating functions:
```ts
function clg(txt: string):void {
	console.log(txt)
}
```

> *no second arg can be passed to above func*


optional paramets:
```ts
function name(name1:string, name2:string = 'pooyan') {
 //some code...
}
function name(num1:number, num2?:number):number {
let res = num1;
 if (num2) {
	res+=num2;
 }
 return res;
}
```
now the funcs above can be called with either one or two paramets