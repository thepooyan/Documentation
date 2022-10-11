```js
    //copyable
    function clipboardFallback(text) {
        var textArea = document.createElement("textarea");
        textArea.value = text;

        // Avoid scrolling to bottom
        textArea.style.top = "0";
        textArea.style.left = "0";
        textArea.style.position = "fixed";

        document.body.appendChild(textArea);
        textArea.focus();
        textArea.select();

        document.execCommand('copy');

        document.body.removeChild(textArea);
    }
    function clipboard(text) {
        if (!navigator.clipboard) {
            clipboardFallback(text);
            return;
        }
        navigator.clipboard.writeText(text)
    }
    dc.queries('.copyable').forEach(item => {
        item.onclick = () => {
            let copyText = item.dataset.copy;

            clipboard(copyText);
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