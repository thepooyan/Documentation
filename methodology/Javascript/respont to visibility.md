```js
const respondToVisibility = (element, callback, once = false) => {
	let options = {
		root: document.documentElement
	}

	let observer = new IntersectionObserver((entries, observer) => {
		entries.forEach(entry => {
			if (entry.intersectionRatio > 0) {
				console.log('seen')
				callback();
				once && observer.disconnect();
			}
		});
	}, options);

	observer.observe(element);
}
```