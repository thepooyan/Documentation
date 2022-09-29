---
search: import and export
category: Javascript
done: true
---

# import and export
importing and exporting can only happen in js modules. 
- in html add type="module" to script tag to use import (a normal js file)
- in node, either set [[type module in package.json]] (how?) or create files with 'mjs' extention


two ways to export:
```js
export const variable = 'Hello';
//OR
const variable = 'Hello';
export default variable;
```

importing each one:
```js
import { variable } from './file.js'; //for the first type of export
//OR
import variable from './file.js'; //this means that variable was exported as default
```

could use both in a file:
```js
let var1, var2, var3;
export default var1;
export {var2, var3};
```
```js
import var1, {var2, var3} from './file.js'
```