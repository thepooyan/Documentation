```scss
.container {
--verticMargin: 5em;
margin: 0 var(--verticMargin);
	.fullScreen {
		margin: 0 calc(-1 * var(--verticMargin));
	}




	@include media($mobile) {
		--verticMargin: 1em;
	}
}
```

 refrence: [[Dynamic Orientation]]