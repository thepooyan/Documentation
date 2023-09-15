```js
function newVar(name, onchange, onread) {
    Object.defineProperty(global, name, {
        get: () => {onread && onread(this.value);  return this.value},
        set: input => {this.value = input; onchange && onchange(input)},
    })
}
```
