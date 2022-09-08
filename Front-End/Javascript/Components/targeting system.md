	  //* Target system (grouped and single)
	  let targeter = dc.queries('[data-target]');
	  targeter.forEach(i => {
	    let target = dc.query(i.dataset.target);
	    if (target.dataset.group) {
	      i.addEventListener('click', function () {
	        dc.queries(`[data-group=${target.dataset.group}]`).forEach(item => {
	          item.classList.remove(i.dataset.targetvalue);
	        })
	        target.classList.add(i.dataset.targetvalue);
	      })
	    } else {
	      i.addEventListener('click', function () {
	        target.classList.toggle(i.dataset.targetvalue);
	      })
	    }
	  })