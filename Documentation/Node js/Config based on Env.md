```bash
npm i config
```

```js
const config = require('config');
clg(config.get('name')) //get the name variables based on env we are on
```

make a folder `config` in root of the prj, containing these three files:
```default.json
{"name":"default"}
```
```development.json
{"name":"development"}
```
```production
{"name":"production"}
```

*changing the environment is via changing the NODE_ENV variable. see [[Environments]]*
*DO NOT store sensitive information in config files. see [[Custom Environment variables]]* 