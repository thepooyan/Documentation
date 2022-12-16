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
        function notif(content, duration) {
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

        callModal.notif = notif;
        callModal.success = (msg, duration) => successFail(msg, duration, false);
        callModal.fail = (msg, duration) => successFail(msg, duration, true);
        callModal.confirm = confirm;
        callModal.custom = prepearModal;
        callModal.spinner = spinner;

        window.callModal = callModal;
    })();
```