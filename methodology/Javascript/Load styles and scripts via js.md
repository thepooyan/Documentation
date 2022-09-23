```js
    function loadStyle(style) {
        if (!document.getElementById(style)) {
            let head = document.getElementsByTagName('head')[0];
            let link = document.createElement('link');
            link.id = style;
            link.rel = 'stylesheet';
            link.type = 'text/css';
            link.href = style;
            link.media = 'all';
            head.appendChild(link);
        }
    }
    function loadScript(src, callback) {
        if (!document.getElementById(src)) {
            let head = document.getElementsByTagName('head')[0];
            let script = document.createElement('script');
            script.src = src;
            script.id = src;
            script.defer = 'defer';
            script.onload = callback;

            head.appendChild(script);
        }
    }
```