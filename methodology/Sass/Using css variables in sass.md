declare variables in this way:
```scss
$mainColor: --mainColor;
#{$mainColor}: blue;
```

usage:
```scss
div {
color: var($mainColor) //OR var(--mainColor)
}
```

altering the variable using sass:
```scss
#{$mainColor}: $dynamic-value;
```