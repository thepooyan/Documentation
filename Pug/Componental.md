## this is main
```pug
	mixin comment(data)
	    .wrapper
	        span.name= data.name
	        span.ln= data.ln
	
	doctype html
	head
	    link(rel="stylesheet" href="style.css")
	body
	    p this is main file
	
	    include comp.pug
	
	    +comment({name:'pooyan', ln:'salmani'})
```

&nbsp;
## this is comp.pug:
```pug
	h2 this is a component
		ul
			li one
			li two
			li three
```