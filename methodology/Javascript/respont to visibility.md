```js
//respond to visibility
function respondToVisibility(element, callback, once = false) {
    let options = {
        root: null
    }

    let observer = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.intersectionRatio > 0) {
                callback();
                once && observer.disconnect();
            }
        });
    }, options);

    observer.observe(element);
}
```