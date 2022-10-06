```js
    function getOffsetTop(element) {
        return element ? (element.offsetTop + getOffsetTop(element.offsetParent)) : 0;
    }
    function isVisible(query, expand = 0) {
        let elements = dc.queries(query);

        let res = Object.values(elements).find(item => {
            return ($(window).scrollTop() + $(window).height() > getOffsetTop(item) - expand &&
                $(window).scrollTop() < getOffsetTop(item) + item.clientHeight + expand)
        });
        if (res) return true; else return false;
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