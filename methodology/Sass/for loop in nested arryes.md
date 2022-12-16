```scss
$colors: (
    (green, rgb(24, 158, 24)),
    (yellow, rgb(120, 120, 91)),
    (red, red),
    (purple, purple)
);

@for $i from 1 through length($colors) {
    $item: nth($colors, $i);
    $name: nth($item, 1);
    $color: nth($item, 2);
  
    .notice-#{$name} {
        color: $color;
    }
}
```