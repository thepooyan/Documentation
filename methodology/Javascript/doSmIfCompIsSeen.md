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

## version 2.0:
- no longer using jquery
- no longer dependent on is visible
- avoids running unneccary queries on overy scroll
- depenencies: [[getOffsetTop]] 
```js
function doSmIfCompIsSeen(comp, callback, offset = 400) {
  
	function isVisible(query, expand = 0) {
		let elements = dc.queries(query);
		  
		return function() {
			let res = Object.values(elements).find(item => {
				return (window.scrollY + window.innerHeight > getOffsetTop(item) - expand && window.scrollY < getOffsetTop(item) + item.clientHeight + expand)
			});
			if (res) return true; else return false;
		}
	}
	const isCompVisible = isVisible(comp, offset);
	
	function compLoader() {
		if (isCompVisible()) {
			callback();
			window.removeEventListener('scroll', compLoader);
		}
	}
	  
	window.addEventListener('scroll', compLoader);
	compLoader()
}
```