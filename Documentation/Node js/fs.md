## file system
```js
const fs = require('fs');
let files = fs.readdirSync('./');
clg(files)

// ASYNC

fs.readdir('./', (err, res)=>{
if (err) clg('Error', err)
else clg('Result', res)
})
```