```js
function newPromise() {
    let a,b;
    let promise = new Promise((resolve, reject) => {
        a = resolve;
        b = reject;
      });
      promise.resolve = a;
      promise.reject = b;
      return promise;
}
```
Usage:
```js
let state = newPromise();
state.resolve();
state.then(()=>{
    console.log('done')
})
```