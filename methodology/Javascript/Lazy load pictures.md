dependencies: jquery
```js
    function lazyLoadPics() {
        $("[data-src]").each(function () {
            if (!$(this).attr('src')) {
                $(this).attr("src", $(this).data("src"));
            }
        })
        $('.lazyLoad').each(function () {
            if (!$(this).hasClass('backgroundLoaded'))
                $(this).addClass('backgroundLoaded');
        })
    }
```

## usage:
use `data-src` instead of `src` for **img** tags.
for css background images, add `lazyLoad` class to the tag, and define the css like this:

```scss
.img {
	//attributes...
	&.backgroundLoaded {
		background-image: url("url")
	}
}
```