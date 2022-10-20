create config file:
```cli
tsc --init
```

general config:
```json
{
	"compilerConfig": {
		"target": "esc2016", //obvious
		"rootDir": "./", //source code directory
		"outDir": "./", //export direcory
		"removeComments": true,
		"noEmitOnError": true, //do not compile when there are errors is source
		"sourceMap": true
	}
}
```
*if there is a config file, simply running `tsc` will compile all files accordingly*

code config:
```json
"noUnusedLocals": true,
"noUnusedParameters": true,
"noImplicitReturns": true
```