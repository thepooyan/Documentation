this is just like [[doSmIfCompIsSeen]], but it runs the callbback for every single component found with the given query, and will provide the callback with a variable to access the element in sight.
dependencies: [[getOffsetTop]]
```js
function forEachComp(comp, callback, offset = 400) {
  
function isVisible(ele, expand = 0) {
  
return function () {
if (window.scrollY + window.innerHeight > getOffsetTop(ele) - expand &&
window.scrollY < getOffsetTop(ele) + ele.clientHeight + expand)
return true; else return false;
}
}
  
Object.values(dc.queries(comp)).forEach(item => {
const isCompVisible = isVisible(item, offset);
  
function compLoader() {
if (isCompVisible()) {
callback(item);
window.removeEventListener('scroll', compLoader);
}
}
  
window.addEventListener('scroll', compLoader);
compLoader()
})
  
}
  
forEachComp('.blue', (item) => {
setTimeout(() => {
item.classList.remove('blue')
}, 1000);
}, 0)
```