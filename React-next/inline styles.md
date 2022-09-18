styles are treated as objects:
```js
let style = {color: 'red', backgroundColor: 'black'}
<p style={style}>this is the styled paragraph</p>
```

*when writing inline styles, instead of usuing - character, use camel case!
example:*
	`border-color    >>      borderColor`

so inline styles look like this:
```js
<p style={{color: 'red', backgroundColor: 'black'}}>
	this is the styled paragraph
</p>
```

conditions can come into play:
![[conditionals]]
