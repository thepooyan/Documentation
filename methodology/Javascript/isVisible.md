```js
    function getOffsetTop(element) {
        return element ? (element.offsetTop + getOffsetTop(element.offsetParent)) : 0;
    }
    function isVisible(query, expand = 0) {
        let elements = dc.queries(query);

        let res = Object.values(elements).find(item => {
            return ($(window).scrollTop() + $(window).height() > getOffsetTop(item) - expand &&
                $(window).scrollTop() < getOffsetTop(item) + item.clientHeight + expand)
        });
        if (res) return true; else return false;
    }
```