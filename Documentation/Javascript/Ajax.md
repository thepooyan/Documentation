---
search: search about ajax
category: Javascript
done: true
---
- *AJAX is the general term used to describe clinet applications interact with server in an asyncronus way*
- AJAX stands for Asyncronus javascript and XML
- some popular ajax libraries are: 
	- axios
	- jquery ajax
- also recently, *fetch api* has been added to modern browsers to eliminate the need to use an external library. (does not support IE and older browsers)

Plain ajax syntax: (that probably will never be used)
```js
function loadDoc() {  
  const xhttp = new XMLHttpRequest();  
  xhttp.onload = function() {  
    document.getElementById("demo").innerHTML = this.responseText;  
    }  
  xhttp.open("GET", "ajax_info.txt", true);  
  xhttp.send();  
}
```
