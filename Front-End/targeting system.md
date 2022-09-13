```js
	  //* Target system (grouped and single)
	  let targeter = dc.queries('[data-target]');
	  
	  targeter.forEach(i => {
	    let target = dc.query(i.dataset.target);
	    let value = i.dataset.targetvalue?i.dataset.targetvalue:'active';
	    if (target.dataset.group) {
	      i.addEventListener('click', function () {
	        dc.queries(`[data-group=${target.dataset.group}]`).forEach(item => {
	          item.classList.remove(value);
	        })
	        target.classList.add(value);
	      })
	    } else {
	      i.addEventListener('click', function () {
	        target.classList.toggle(value);
	      })
	    }
	  })
```