conditional classnames:
```js
let boolean = true / false;
<p className={boolean?"firstClass":"SecondClass"}
```

conditional inline styles:
```js
let boolean = true / false;
<p style={boolean?{color: 'red'}:{backgroundColor: black}}
```