```pug
	    - let multipleClass = ['class1', 'class2', 'class3',]
	    div(class=multipleClass)
	
	    - let style = {'color': 'red', 'background-color': 'blue'}
	    div(style=style)
	
	    - let attrib = {'src': './folder', 'alt': 'this is dummt image'}
	    img&attributes(attrib)
```