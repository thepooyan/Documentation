---
learned: true
endPoint: true
---
	  //* onclick system
	  refreshOnClicks();
	  function refreshOnClicks() {
	    let clicker = dc.queries("[data-onClick]");
	
	    clicker.forEach(item => {
	      if (item.getAttribute('data-group')) {
	  
	        if (!item.clickEvent) {
	          item.clickEvent = true;
	          item.addEventListener("click", function () {
	            dc.queries(`[data-group=${item.getAttribute('data-group')}`).forEach(item => {
	              item.classList.remove(item.getAttribute("data-onClick"));
	            })
	            item.classList.toggle(item.getAttribute("data-onClick"));
	          });
	        }
	  
	      } else {
	  
	        if (!item.clickEvent) {
	          item.clickEvent = true;
	          item.addEventListener("click", function () {
	            item.classList.toggle(item.getAttribute("data-onClick"));
	          });
	        }
	  
	      }
	    })
	  }