```js
function getOffsetTop(element) {

return element ? (element.offsetTop + getOffsetTop(element.offsetParent)) : 0;

}
```