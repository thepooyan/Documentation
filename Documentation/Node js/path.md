```js
const path = require('path');
```

### parse:
give it a whole path will break it done to peaces:
```js
let parse = path.parse('/home/pooyan/Desktop/New Folder/a.js')
console.log(parse) //seprates base, filename, extention, dir, and root
```