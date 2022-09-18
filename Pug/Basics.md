```pug
    a#attentionBanner this is the banner
	    p hello this is a paragraph
	    br
	    p.
	        this is a paragraph
	        with two lines
	    p.paragraph.
	        this is another paragraph
	        how 
	        many 
	        lines 
	    img(src="this is source")
	    ul
	        li first one
	        li first two
	        li first three
	    
	    p make it prettier?
	    input(data-js=`${5 > 2 ? 'yes' : 'no'}`)
```