dependencies: [[queryLib]]
```js
//height animation
function setHeightProperties(section) {
    console.log('hello');
    section.querySelectorAll('.heightAnimation').forEach(item => {
        console.log(item);
        if (window.getComputedStyle(item).display === 'none') {
            let observer = new MutationObserver(function (mutations) {
                mutations.forEach((mutationsRecord) => {
                    if (window.getComputedStyle(mutationsRecord.target).display !== 'none') {
                        setHeightProperty(mutationsRecord.target)
                        observer.disconnect();
                    }
                });
            });
            observer.observe(item, { attributes: true });
        } else {
            setHeightProperty(item);
        }
    })
    function setHeightProperty(i) {
        i.style.setProperty('--maxHeight', i.scrollHeight + 'px');
    }
}
```

```scss
.sample {
	//code...
	max-height: 0;
	
	&.active {
		max-height: var(--maxheight)
	}
}
```

```html
<div class="sample heightAnimation">...</>
```