is vs code, in run and debug choose the node js as debugger and update the `lunch.json` config as follows:
```json
"program": "${workspaceFolder}/src/test.ts",
"preLaunchTask": "tsc: build - tsconfig.json", //this is the new line
"outFiles": [
"${workspaceFolder}/**/*.js"
]
```

**Attention!** this only works when a map file is available. see [[../typescript/config]]