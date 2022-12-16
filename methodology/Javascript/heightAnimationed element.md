dependencies: [[respont to visibility]]
```js
//height animation
function setHeightProperties(section) {
    section.querySelectorAll('.heightAnimation').forEach(item => {
        respondToVisibility(item, _ => {
            setHeightProperty(item);
        }, true)
    })
    const setHeightProperty = (i) => {
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