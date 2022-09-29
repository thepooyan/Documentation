*Implicit binding*: when function is invoked after a dot '.' the `this` keyword will refre to the object beore the dot.
```js
const person = {
	name: 'pooyan',
	sayName = () => {
		console.log(`my name is ${this.name}`)
	}
}

person.sayName();
```

*explicit binding*: this method explicitly decalres that the function is invoked as part of the person obj. so the `this` keyword will refer to the object given to it.
(the `call` property is built in to every function in jacascript)
```js
const person = {
	name: 'pooyan',
}

const sayName = () => {
	console.log(`my name is ${this.name}`)
}

sayName.call(person);
```

*new binding*: when a function is called via the `new` keyword, the `this` keyword will refrence to a NEW EMPTY object;
```js
function Person(name) {
	this.name = name;
	// this = {}
}
const p1 = new Person('ali');

console.log(p1)
```

*default binding*: if none of the above refrences are found, `this` keyword will refrence the global object. which is `window` in browser, and in NODE is `global` or `globalThis`.
(in browser, every variable defined will automaticly be added to the global object.)