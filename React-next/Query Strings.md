# seach param hook
if query string looks like this: `/mobiles/whatever/iphone?FILTER=a&price=500`

## get search param
```jsx
let [searchParam, setSeachParam] = useSearchParams();
searchParam.get("FILTER") // get value of FILTER query. or any other
searchParam.get("price") // get price value of query string
```

## set search param

```jsx
let [searchParam, setSeachParam] = useSearchParams();
setSearchParam({filter: "hello"}) // result > ?filter=hello
```