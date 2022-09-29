```js
const cors = require('cors');

let corsOptions = {
	origin: 'http://example.com',
	optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204
}

app.use(cors(corsOptions))
```