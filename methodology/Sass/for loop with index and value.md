```scss
$colors: #ff008a, #ba6adb, #355ba6, #61a4f5, #66dada;

@for $i from 1 through length($colors) {
	li:nth-child(#{$i}) {
		$item: nth($colors, $i);
		#{$color}: $item;
	}
}
```