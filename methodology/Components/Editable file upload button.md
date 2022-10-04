```scss
        label {
            @include square(1em);
            cursor: pointer;
            background-color: red;
            input {
                display: none;
            }
        }
```
```pug
        label(for="chatPhoto")
	        span
            input(type="file")#chatPhoto
```
```js
function inputChangeHandler(item) {
  item.addEventListener('change', (e) => {
	item.parentElement.querySelector('span').innerHTML = e.target.value;
  })
}
```
