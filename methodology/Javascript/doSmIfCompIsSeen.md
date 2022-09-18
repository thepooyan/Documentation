dependencies: [[isVisible]]
```js
    function doSmIfCompIsSeen(comp, callback, offset = 400) {
        window.addEventListener('scroll', compLoader);
        compLoader()

        function compLoader() {
            if (isVisible(comp, offset)) {
                callback();
                window.removeEventListener('scroll', compLoader);
            }
        }
    }
```