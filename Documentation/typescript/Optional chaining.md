```ts
type Customer = {
birthday: Date
}
  
function getCustomer(id: number):Customer|undefined {
return id===1?{birthday: new Date}:undefined;
}
  
getCustomer(1).birthday
```
this code will result in an compiletime error like this:
> getCustomer migt possible be undifined

and if so, it will break the program. the solution is simple:
```ts
getCustomer(1)?.birthday
```

the above expression means return the birthday, only if customer exists. otherwise return `undifined`

```ts
func?.('hello') //run if the func exists only
arry?.[0] //get the firt ele if the arry exists
```