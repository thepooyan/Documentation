dependencies: [[queryLib]]
```js
//height animation
dc.queries('.heightAnimation').forEach(item => {
	item.style.setProperty('--maxHeight', item.scrollHeight + 'px') ;
})
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