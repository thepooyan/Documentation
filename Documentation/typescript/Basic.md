declaring the type of all variables is THE POINT of typescript.

```ts
let a = 5;
```
when initializing a varibale and setting it a value, the type will be set to the value itself. so it's ok to use above syntax.

however when initializing an empty variable would have to be with type:
```ts
let a: number;
```

when decalring arry, specify the type of elements inside:
```ts
let numbers: number[];
let strings: string[];
let arry: any[]; // ===  let arry = [];
```