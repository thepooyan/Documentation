dependencies: [[queryLib]]
```js
//modal
(function () {
    const modal = dc.query('#modal');
    modal.content = modal.query('.content');

    function callModal(content, className) {
        return prepearModal(className, (start) => {
            start(content);
        })
    }

    function prepearModal(className, additionalFunc, locked = false) {
        if (!additionalFunc && typeof className === 'function') {
            additionalFunc = className;
            className = undefined;
        }

        return new Promise((res) => {

            modal.className = '';
            className && modal.classList.add(className);

            if (!locked) {
                modal.onclick = e => {
                    if (!modal.content.contains(e.target))
                        closeModal()
                };
            }
            function closeModal() {
                return new Promise((innerRes, innerRej) => {
                    if (!modal.classList.contains('active')) return
                    modal.classList.remove('active');
                    modal.addEventListener("transitionend", () => {
                        innerRes();
                        res();
                    }, { once: true })
                })
            }
            function showModal(content) {
                if (typeof content === 'string')
                    modal.content.innerHTML = content;
                else
                    modal.content.replaceChildren(content);
                modal.classList.add('active');
            }

            additionalFunc(showModal, closeModal);
        })
    }

    //custom notifications
    function notif(content, duration = 5000) {
        return prepearModal('notification', (showModal, closeModal) => {
            showModal(content);
            setTimeout(closeModal, duration);
        })
    }
    function successFail(msg, duration = 5000, failed) {
        let content = document.createElement('div');
        let icon = document.createElement('i');
        let br = document.createElement('br');
        if (failed) {
            icon.className = "fas fa-times";
        } else {
            icon.className = 'fas fa-check-circle';
        }
        content.innerText = msg;
        content.appendChild(br);
        content.appendChild(icon);

        return notif(content, duration)
    }
    function confirm(text) {
        return new Promise((resolve, reject) => {

            prepearModal('choice', (showModal, closeModal) => {
                let content = document.createElement('div');
                let buttonY = document.createElement('button');
                let buttonN = document.createElement('button');
                let span = document.createElement('span');

                span.innerText = text;
                buttonY.innerText = 'بله';
                buttonY.onclick = () => {
                    closeModal().then(resolve);
                };
                buttonY.className = 'button';
                buttonN.innerText = 'خیر';
                buttonN.onclick = () => {
                    closeModal().then(reject);
                };
                buttonN.className = "button reverse";

                content.appendChild(span);
                content.appendChild(buttonY);
                content.appendChild(buttonN);

                showModal(content)
            }).then(reject)

        })
    }
    function spinner(func) {
        return prepearModal('spinner', (openModal, closeModal) => {
            let container = document.createElement('div');
            let loader = document.createElement('div');
            loader.classList.add('loader');
            container.appendChild(loader);
            let text = document.createTextNode('لطفا صبر کنید...')
            container.appendChild(text)
            openModal(container);
            func && func(closeModal);
        }, true)
    }
    function image(src) {
        return prepearModal('image', (showModal, closeModal) => {
            let img = document.createElement('img');
            img.src = src;
            showModal(img);
        })
    }

    callModal.notif = notif;
    callModal.success = (msg, duration) => successFail(msg, duration, false);
    callModal.fail = (msg, duration) => successFail(msg, duration, true);
    callModal.confirm = confirm;
    callModal.custom = prepearModal;
    callModal.spinner = spinner;
    callModal.image = image;

    window.callModal = callModal;
})();](<//modal
(function () {
    const modal = dc.query('#modal');
    modal.content = modal.query('.content');

    function callModal(content, className) {
        return prepearModal(className, (start) =%3E {
            start(content);
        })
    }

    function prepearModal(className, additionalFunc, { close } = { close: 'overlay' }) {
        console.log('modal called');
        if (!additionalFunc && typeof className === 'function') {
            additionalFunc = className;
            className = undefined;
        }

        return new Promise((res) => {

            modal.className = '';
            className && modal.classList.add(className);

            switch (close) {
                case 'all':
                    modal.onclick = closeModal;
                    break;
                case 'overlay':
                    modal.onclick = e => {
                        if (!modal.content.contains(e.target))
                            closeModal()
                    };
                    break;
                case 'locked':
                    modal.onclick = null;
                    break;
            }

            function closeModal() {
                return new Promise((innerRes, innerRej) => {
                    if (!modal.classList.contains('active')) return
                    modal.classList.remove('active');
                    modal.addEventListener("transitionend", () => {
                        innerRes();
                        res();
                    }, { once: true })
                })
            }
            function showModal(content) {
                if (typeof content === 'string')
                    modal.content.innerHTML = content;
                else
                    modal.content.replaceChildren(content);
                modal.classList.add('active');
            }

            additionalFunc(showModal, closeModal);
        })
    }

    function scrollIntoVeiw(ele, callback) {
        if (!ele) return

        function getOffsetTop(element) {
            return element ? (element.offsetTop + getOffsetTop(element.offsetParent)) : 0;
        }
        const targetOffset = getOffsetTop(ele) - (window.innerHeight / 2) + (ele.clientHeight / 2);
        let targetOffsetFloor = Math.floor(targetOffset);
        const doucmentHeight = document.documentElement.scrollHeight;
        const maxOffset = doucmentHeight - window.innerHeight;

        if (targetOffsetFloor %3C 0) targetOffsetFloor = 0;
        if (targetOffsetFloor > maxOffset) targetOffsetFloor = maxOffset;

        const onScroll = function () {
            let windowOffsetFloor = Math.floor(window.pageYOffset);
            if (windowOffsetFloor+1 >= targetOffsetFloor) {
                window.removeEventListener('scroll', onScroll)
                callback()
            }
        }
        window.addEventListener('scroll', onScroll);
        window.scrollTo({
            top: targetOffset,
            behavior: 'smooth'
        })
        onScroll()
    }


    //custom notifications
    function notif(content, duration = 5000) {
        return prepearModal('notification', (showModal, closeModal) => {
            showModal(content);
            setTimeout(closeModal, duration);
        }, { close: 'all' })
    }
    function successFail(msg, duration = 5000, failed) {
        let content = document.createElement('div');
        let icon = document.createElement('i');
        let br = document.createElement('br');
        if (failed) {
            icon.className = "fas fa-times";
        } else {
            icon.className = 'fas fa-check-circle';
        }
        content.innerText = msg;
        content.appendChild(br);
        content.appendChild(icon);

        return notif(content, duration)
    }
    function confirm(text) {
        return new Promise((resolve, reject) => {

            prepearModal('choice', (showModal, closeModal) => {
                let content = document.createElement('div');
                let buttonY = document.createElement('button');
                let buttonN = document.createElement('button');
                let span = document.createElement('span');

                span.innerText = text;
                buttonY.innerText = 'بله';
                buttonY.onclick = () => {
                    closeModal().then(resolve);
                };
                buttonY.className = 'button';
                buttonN.innerText = 'خیر';
                buttonN.onclick = () => {
                    closeModal().then(reject);
                };
                buttonN.className = "button reverse";

                content.appendChild(span);
                content.appendChild(buttonY);
                content.appendChild(buttonN);

                showModal(content)
            }).then(reject)

        })
    }
    function spinner(func) {
        return prepearModal('spinner', (openModal, closeModal) => {
            let container = document.createElement('div');
            let loader = document.createElement('div');
            loader.classList.add('loader');
            container.appendChild(loader);
            let text = document.createTextNode('لطفا صبر کنید...')
            container.appendChild(text)
            openModal(container);
            func && func(closeModal);
        }, { close: 'locked' })
    }
    function image(src) {
        return prepearModal('image', (showModal, closeModal) => {
            let img = document.createElement('img');
            img.src = src;
            showModal(img);
        })
    }
    function guide(msg, element) {
        return new Promise((res, rej) => {
            prepearModal('guide', (showModal, closeModal) => {
                let fragment = document.createDocumentFragment();
                let text = document.createTextNode(msg);
                let img = document.createElement('img');
                img.src = '/Content/images/img/swirlyArrow.png';
                let button = document.createElement('button');
                button.innerText = 'باشه!';
                button.onclick = closeModal;
                fragment.appendChild(text);
                fragment.appendChild(button);

                scrollIntoVeiw(element, () => {
                    document.body.style.overflow = 'hidden'; //lock the scroll
                    let elementFinalPosition = element.getBoundingClientRect();

                    if (window.innerWidth > 830) {
                        let elementCenter = (elementFinalPosition.left + element.offsetWidth / 2);
                        let screenDivide = (window.innerWidth / 3);
                        let horizantalSection = Math.floor(elementCenter / screenDivide) + 1;

                        img.style.top = elementFinalPosition.top + (element.offsetHeight / 2) - 30 + 'px';
                        switch (horizantalSection) {
                            case 1:
                                img.style.left = elementFinalPosition.right + 'px';
                                img.classList.add('flip');
                                break;
                            case 2:
                                img.style.right = window.innerWidth - elementFinalPosition.left + 'px';
                                modal.classList.add('left')
                                break;
                            case 3:
                                img.style.right = window.innerWidth - elementFinalPosition.left + 'px';
                                break;
                        }

                        if (1100 >= window.innerWidth && horizantalSection === 2) {
                            img.style.right = null;
                            img.style.left = elementFinalPosition.right + 'px';
                            img.classList.add('flip');
                            modal.classList.add('left');
                        }
                    } else {
                        let elementCenter = (elementFinalPosition.top + element.offsetHeight / 2);
                        let screenDivide = (window.innerHeight / 3);
                        let verticalSection = Math.floor(elementCenter / screenDivide) + 1;

                        img.style.right = window.innerWidth - element.getBoundingClientRect().right + (element.offsetWidth / 2) - 60 + 'px';
                        switch (verticalSection) {
                            case 1:
                                img.style.bottom = elementFinalPosition.top - 20 + 'px';
                                modal.classList.add('bottom');
                                img.classList.add('toBottom');
                                break;
                            case 2:
                            case 3:
                                img.style.top = elementFinalPosition.bottom + 20 + 'px';
                                modal.classList.add('top');
                                img.classList.add('toTop');
                                break;
                        }

                    }

                    showModal(fragment);
                    modal.appendChild(img);
                });
            }).then(() => {
                document.body.style.overflow = null; //unlock the scroll
                modal.querySelector('img').remove();
                setTimeout(res, 400)
            })
        })
    }

    callModal.notif = notif;
    callModal.success = (msg, duration) => successFail(msg, duration, false);
    callModal.fail = (msg, duration) => successFail(msg, duration, true);
    callModal.confirm = confirm;
    callModal.custom = prepearModal;
    callModal.spinner = spinner;
    callModal.guide = guide;
    callModal.image = image;

    window.callModal = callModal;
})();
```