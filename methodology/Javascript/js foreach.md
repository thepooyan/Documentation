# js foreach problem

in main js file of a page, adding this [[code]]:
```js
    //* Target system (grouped and single)
    let targeter = dc.queries('[data-target]');

    targeter.forEach(i => {
        let target = dc.query(i.dataset.target);
        let value = i.dataset.targetvalue ? i.dataset.targetvalue : 'active';
        if (target.dataset.group) {
            i.addEventListener('click', function () {
                dc.queries(`[data-group=${target.dataset.group}]`).forEach(item => {
                    item.classList.remove(value);
                })
                target.classList.add(value);
            })
        } else {
            i.addEventListener('click', function () {
                target.classList.toggle(value);
            })
        }
    })
```
will make this [[code block]]:
```js
   //* Homeslider
    (function () {
        let sliderImages = dc.queries("#slider .images .img");
        let sliderTimeout = document.getElementById('slider').getAttribute('data-timeout');
        let sliderIndex;
        sliderImages.forEach((item, index) => {
            if (item.classList.contains('active')) sliderIndex = index;
        });

        if (sliderImages.length == 1) { document.getElementById('slider').classList.add('single') }
        if (sliderImages.length == 0) {
            document.getElementById('slider').classList.add('none');
            return;
        }
        if (sliderIndex == undefined) noActive();

        for (let i = 0; i < sliderImages.length; i++) {
            let span = document.createElement("span");
            span.classList.add("dot" + i);
            if (i == sliderIndex) span.classList.add('active')
            dc.query("#slider .dots").appendChild(span);
        }
        let dots = dc.queries("#slider .dots span");
        for (let i = 0; i < dots.length; i++) {
            dots[i].addEventListener('click', function () {
                sliderReset();
                sliderGoto(i);
            })
        }

        document.getElementById("sliderNext").addEventListener("click", function () {
            sliderNext();
            sliderReset();
        });
        document.getElementById("sliderPre").addEventListener("click", function () {
            sliderPrev();
            sliderReset();
        });

        function sliderNext() {
            sliderImages[sliderIndex].classList.remove("active");
            dots[sliderIndex].classList.remove('active');

            sliderIndex = (sliderImages[++sliderIndex] ? sliderIndex++ : 0);

            sliderImages[sliderIndex].classList.add("active");
            dots[sliderIndex].classList.add('active');
            getNextSliderImage();
        }
        function sliderPrev() {
            sliderImages[sliderIndex].classList.remove("active");
            dots[sliderIndex].classList.remove('active');

            sliderIndex = (sliderImages[--sliderIndex] ? sliderIndex-- : sliderImages.length - 1);

            sliderImages[sliderIndex].classList.add("active");
            dots[sliderIndex].classList.add('active');
            getThisSliderImage();
        }
        function sliderReset() {
            clearInterval(sliderInterval);
            sliderInterval = window.setInterval(function () {
                sliderNext();
            }, sliderTimeout)
        }
        function stopSlider() {
            clearInterval(sliderInterval);
        }
        window.stopSlider = stopSlider;

        function sliderGoto(index) {
            sliderImages[sliderIndex].classList.remove("active");
            dots[sliderIndex].classList.remove('active');
            sliderIndex = index;
            sliderImages[sliderIndex].classList.add("active");
            dots[sliderIndex].classList.add('active');
            getThisSliderImage(getNextSliderImage);
        }
        function noActive() {
            sliderIndex = 0;
            sliderImages[0].classList.add('active');
        }

        dc.queries('#slider .images .img .title').forEach(item => {
            if (item.innerHTML.length > 16) item.classList.add('long')
            if (item.innerHTML.length > 20) item.classList.add('tooLong')
        })
        if (sliderImages.length > 1) {
            var sliderInterval = setInterval(function () {
                sliderNext();
            }, sliderTimeout)
        }

        function getNextSliderImage() {
            let trg = sliderImages[sliderImages[sliderIndex + 1] ? sliderIndex + 1 : 0].querySelector('img');
            trg.setAttribute('src', trg.dataset.slidersrc)
        }
        getNextSliderImage();
        function getThisSliderImage(callback) {
            let activeImg = dc.query('.active [data-sliderSrc]');
            activeImg.setAttribute('src', activeImg.dataset.slidersrc);
            activeImg.onload = function () {
                callback();
            }
        }
    })()
```
output an error.
the problem gets fixed by chaging foreach to a normal for loop. had seen this before somewhere...