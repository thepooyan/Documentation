```js
    //copyable
    dc.queries('.copyable').forEach(item => {
        item.onclick = () => {
            let copyText = item.dataset.copy;
            navigator.clipboard.writeText(copyText);
            dc.queries('.copied').forEach(i => {
                i.classList.remove('copied')
            })
            item.classList.add('copied');
            setTimeout(() => {
                item.classList.remove('copied')
            }, 3000);
        }
    })
```
```scss
.copyable {
    position: relative;
    cursor: pointer;

    &::after {
		content: "کپی شد!";
        position: absolute;
        font-family: "IRANSansX";
        background: grey;
        color: white;
        padding: 0.4em 0.6em;
        border-radius: 20px 20px 20px 0;
        bottom: 40%;
        opacity: 0;
        transition: 0.1s;
    }

    &.copied::after {
        bottom: 50%;
        opacity: 100;
    }
}
```
```html
<div class="copyable" data-copy="6104 3398 2923 2656">
	Anything
</div>
```