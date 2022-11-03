first we have the starter pack which is classes that we give the `*`, `body`, and `html`:
```scss
* {
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    border: none;
    outline: none;
    vertical-align: baseline;
    list-style: none;
    scroll-behavior: smooth;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
body {
    background: $bg-color;
    /*background: #f6f6f6;*/
    -webkit-font-smoothing: antialiased;
    -moz-font-smoothing: none;
    font-smoothing: antialiased;
    font-family: IRANSansX;
    font-size: 12px;
    line-height: 30px;
    color: $fontcolor;
    overflow-x: hidden;
    overflow-y: scroll;
    direction: rtl;
}
html,
body {
    height: 100%;
    width: 100%;
}
```

then there is definition of basic colors and font sizes for paragraph and titles:
```scss
h1, h2, h3, ... {
	color: var(--black)
}
h1 {
	font-size: 2em;
}
h2 {
	font-size: 1.5em;
}
p {
	font-size: 1.1em;
	color: car(--light-black)
}
```