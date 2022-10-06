```js
const Person = (name) => {
	this.name = name;
}

const p1 = new Person('ali');
const p2 = new Person('akbar');
```

we have a constructer function and two instances of it. if after createing the constructer we want to add a new property or method the Person class, `prototype` keyword should be used:
```js
Person.prototype.sayName = () => {
	console.log(`Hi! my name is ${this.name}`)
}
p1.sayName(); //Hi! my name is ali
p2.sayName(); //Hi! my name is akbar
```
