![[Event loop Visual]] 
the event loop is the system for handling async process.

example:
```js
console.log('log 1')

setTimeout(_=>{console.log('log timeout')}, 0) //macro task

promise.resolve(_=> console.log('log promise')) //micro task

console.log('log 2')
```

will output:
```
log 1
log 2
log promise
log timeout
```
