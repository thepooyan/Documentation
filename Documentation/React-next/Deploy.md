## standard deployment

1. `npm run build`
creates the `.next` folder, which is the published version of next js apps, includeing server side props.
2. `npm start`
starts the project from the `.next` folder, as it needs to be used in actuall servers


## static deployment
1. `npm run build`
2. add export to the `package.json` as follows:
```json
"scripts": {
"dev": "next dev",
"build": "next build",
"start": "next start",
"lint": "next lint",
"export": "next export"
},
```
3. `npm run export`

will generate output in `out` folder. does not support server side features.