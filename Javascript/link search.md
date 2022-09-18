```js
//this script runs on browser js and depends on jquery
document.querySelectorAll('a.btn-more.btn').forEach(item => {
    $.ajax({
        url: item.href,
        success: (result) => {
            if (/class=".*?tipbox/gi.test(result)) {
                console.log(item)
            }
        }
    })
})
//basic idea is that it searcheds through specified links of a page, to find a match in the result

```