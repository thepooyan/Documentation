```js
const EventEmitter = require('events'); //EventEmitter is a class. so pascal case
const emitter = new EventEmitter();

emitter.on('name', (args)=>{
	//code...
	clg(args) //args that was sent with the emit
})

emitter.emit('name', {id: 0, data: 'sdlkfjsd'});
```