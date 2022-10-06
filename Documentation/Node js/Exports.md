---
search: diffrence between require and import/export
---
### exporting modules
```js
function log() {}
let var = '';

module.exports.log = log; //this line exports log function out of it's own module
module.exports.url = url;
or module.exports = log; //when only exporting one thing from a module
```

### loading modules
```js
const file = require('./firstFile.js'); //this will return the *exports* of the mentioned module

//file.log and file.url are usable now!!
```
**`exports` is a refrence of `module.exports`. so when assigning multiple variables to module.exports, we can use the `exports` shortcut. but when exporting a single one, should write the whole thing to not overwrite the `exports` refrence**


