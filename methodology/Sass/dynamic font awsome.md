```scss
@mixin fontAwsome($uni, $weight) {
    content: #{"\"\\"}#{$uni + "\""};
    font-family: "Font Awesome 5 Free";
    font-weight: $weight;
}
```