dependencies: [[isVisible]]
```js
    function loadCompOnScroll(container, controller = `Home/${container.substring(1)}`, args, offset = 400) {
        return new Promise((resolve, reject) => {

            window.addEventListener('scroll', compLoader);
            compLoader();

            function compLoader() {
                if (isVisible(container, offset)) {
                    window.removeEventListener('scroll', compLoader);
                    $(container).load(controller, args, () => {
                        $(container).addClass('loaded');
                        setTimeout(() => { resolve() }, 500);
                    })
                }
            }

        })
    }
```