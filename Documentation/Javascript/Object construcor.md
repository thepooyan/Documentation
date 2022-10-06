```js
function Person(name, ln, age, gender) {
	this.name = name;
	this.ln = ln;
	this.age = age;
	this.gender = gender;
}
  
const pooyan = new Person('pooyan', 'salmani', 21, 'male');
  
console.log(pooyan)
```

the same thing written in Class syntax:
```js
class Person {
	constructor(name, ln, age, gender) {
		this.name = name;
		this.ln = ln;
		this.age = age;
		this.gender = gender;
	}
	//methods...
}
  
const pooyan = new Person('pooyan', 'salmani', 21, 'male');
  
console.log(pooyan)
```