---
todo: write userEffect base Library
category: React
---
bind a function to run on changes of one or multiple states
```jsx
useEffect(func, [state1, state2, ...])
functin func() {...}
```

(leave the arry empty if you intent to run the `func` only once at start)

## cleanup function
```jsx
useEffect(()=>{
//code
return (()=>{
//cleanup function
})
}, [state1, state2])
```
clean up function runs BEFORE the useEffect content. good for killing timeouts written in useEffects:
```jsx
useEffect(() => {
	const timer = setTimeout(() => {
		console.log('effect')
	}, 1000);
	return () => {
		clearTimeout(timer)
	};
}, [state]);
```

### todo:
- [ ] write a lib to prevent overly fast user input (modal shows up and gets clicked in under a second, stuff like that)