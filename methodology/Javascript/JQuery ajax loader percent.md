```js
$.ajax({
	url: '/Courses/AddAnswer',
	type: 'POST',
	data: data,

	xhr: function () {
		let xhr = new window.XMLHttpRequest();
		xhr.upload.addEventListener("progress", function (evt) {
			if (evt.lengthComputable) {
				let percentComplete = evt.loaded / evt.total;
				percentComplete = parseInt(percentComplete * 100);
				clg(percentComplete)
			}
		}, false);
		return xhr;
	},
	
	success: function (response) {
		//...
	}
});
```