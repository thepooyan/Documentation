```js
function scrollIntoVeiw(ele, callback) {
        if (!ele) return

        function getOffsetTop(element) {
            return element ? (element.offsetTop + getOffsetTop(element.offsetParent)) : 0;
        }
        const offset = getOffsetTop(ele) - (window.innerHeight / 2) + (ele.clientHeight / 2);
        console.log(offset)
        const floorOffset = Math.floor(offset);
        const onScroll = function () {
            if (Math.floor(window.pageYOffset) === floorOffset) {
                window.removeEventListener('scroll', onScroll)
                callback()
            }
        }

        window.addEventListener('scroll', onScroll)
        onScroll()

        window.scrollTo({
            top: offset,
            behavior: 'smooth'
        })
    }
```