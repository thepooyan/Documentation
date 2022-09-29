```scss
@mixin box($item) {
    $wid:--wid;
    #{$wid}: $item;
    width: var(--wid);
    height: var(--wid);
}
```