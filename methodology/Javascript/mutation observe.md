```js
let observer = new MutationObserver(function (mutations) {
	mutations.forEach(function (mutationRecord) {
		console.log('style changed!');
	});
});

observer.observe(target, { attributes: true, attributeFilter: ['style'] }); //or ['class']
```