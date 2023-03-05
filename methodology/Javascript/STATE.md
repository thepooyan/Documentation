```js
    //STATES
    class State {
        constructor(initialValue, name) {
            this.value = initialValue;
            this.name = name;
            function getHooks() {
                let hooks = [];
                dc.queries(`[data-state=${name}]`).forEach(i => {
                    i.innerText = initialValue;
                    hooks.push(i)
                })
                return hooks;
            }
            this.hooks = getHooks()
        }
        set(newValue) {
            this.value = newValue;
            this.hooks.forEach(i => {
                i.innerText = newValue;
            })
        }
    }
```