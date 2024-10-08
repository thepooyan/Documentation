```js
// queryLib

(function() {

    const dc = {

        query: (e) => {

            return query(document, e);

        },

        queries: (e) => {

            return queries(document, e);

        },

        id: (e) => {

            return getId(document, e);

        }

    }

    function getId(ele, trgt) {

        return querify(ele.getElementById(trgt))

    }

    function query(ele, trgt) {

        return querify(ele.querySelector(trgt))

    }

    function queries(ele, trgt) {

        return querify(ele.querySelectorAll(trgt))

    }

  

    function querify(ele) {

        if (!ele || (!ele.nodeType && !ele[0].nodeType)) return

        ele.query = (e) => query(ele, e);

        ele.queries = (e) => queries(ele, e);

        return ele

    }

    window.dc = dc;

}) ()

```

## usage:
use `dc.query("selector")` instead of `document.querySelector("selector")`
you can also use `dc.queries` and `dc.id` for *querySelectorAll* and *getElementById*
it can also be used for nested selections:
```js
dc.query('div').queries('.item').id('hello')
```