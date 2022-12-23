```js
//src based changable image

document.querySelectorAll('[data-mobileSrc][data-mobileSrc]').forEach(item => {
  let mobileWidth = parseInt(item.dataset.mobilewidth) || 520;
  let isMobile = window.innerWidth < mobileWidth;
  
  if (isMobile) {
    item.isMobile = true;
    switchSrc(item)
    window.addEventListener('resize', screenCheck);
  } else {
    item.src = item.dataset.screensrc;
    window.addEventListener('resize', mobileCheck);
  }
  function switchSrc(ele) {
    if (ele.isMobile) {
      ele.src = ele.dataset.mobilesrc;
    } else {
      ele.src = ele.dataset.screensrc;
    }
  }
  function mobileCheck() {
    if (window.innerWidth < mobileWidth) {
      item.isMobile = true;
      switchSrc(item);
      window.removeEventListener('resize', mobileCheck);
      window.addEventListener('resize', screenCheck);
    }
  }
  function screenCheck() {
    if (window.innerWidth >= mobileWidth) {
      item.isMobile = false;
      switchSrc(item);
      window.removeEventListener('resize', screenCheck);
      window.addEventListener('resize', mobileCheck);
    }
  }
  
})
```