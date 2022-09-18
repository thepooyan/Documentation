# Promise

## promise resolve outside it's constructor
```javascript
var promiseResolve, promiseReject;

var promise = new Promise(function(resolve, reject){
  promiseResolve = resolve;
  promiseReject = reject;
});

promiseResolve();
```
## ![[single promise constructor function]]

