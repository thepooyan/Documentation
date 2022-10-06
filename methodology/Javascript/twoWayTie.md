run an callback when an element (with optional offset) appears on the screen, run a reverse callback when it exits. in so fourth never stops.
- works on every element matching the query specified
- the query itself will run only at the start of the application. so elements new to the page will not be affected.
```js
function twoWayTie(query, callback, callback2, offset) {

    function isVisibleGen(ele, expand = 0) {
        return function () {
            if (window.scrollY + window.innerHeight > getOffsetTop(ele) - expand &&
                window.scrollY < getOffsetTop(ele) + ele.clientHeight + expand)
                return true; else return false;
        }
    }

    Object.values(dc.queries(query)).forEach(item => {
        const isCompVisible = isVisibleGen(item, offset);

        function forward() {
            function forwardEvnt() {
                if (isCompVisible()) {
                    callback(item);
                    window.removeEventListener('scroll', forwardEvnt);
                    backward()
                }
            }
            window.addEventListener('scroll', forwardEvnt);
            forwardEvnt()

        }
        function backward() {
            function backwardEvnt() {
                if (!isCompVisible()) {
                    callback2(item);
                    window.removeEventListener('scroll', backwardEvnt);
                    forward()
                }
            }

            window.addEventListener('scroll', backwardEvnt);
            backwardEvnt()
        }
        forward();
    })
}
```
