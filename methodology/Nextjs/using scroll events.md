```jsx
if (typeof window !== "undefined") { //otherwise will get error
	window.onscroll = () => {
	if (window.scrollY > 0 && !scrolled) {
		setScrolled(true)
	}
	if (window.scrollY === 0 && scrolled) {
		setScrolled(false)
	}
	}
}
```