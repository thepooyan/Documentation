### getter:
a way of calling obj functions like properites:
```js
const obj = {
	name: 'sdfs',
	ln: 'sss',
	get fullName() {
		return this.name + ' ' + this.ln;
	}
}
clg(obj.fullName)
```

### setter:
to use a temp property to minipilate another one
```js
const obj = {
	name: 'pooyan',
	set alias(alias) {
		this.name += ' ' + alias;
	}
}
obj.alias = 'the pooyan';
console.log(obj.alias) //return undifined
console.log(obj.name)  //returns "pooyan the pooyan"
```

**a setter MUST have exactly one parametr. if you wanna have a function run on the object with no paramter, there's this trick:**
```js
const obj = {
	count : 5,
	type: 'number',
	get res() {
		this.count = 0;
	}
}
obj.res;   //this will run a function ://
console.log(obj)
```

## a way to add get, set to existing obj:
```js
Object.defineProperty(obj, "property", {
	get : function () {
		return ((this * this) - 5) / 5;
	}
});
```