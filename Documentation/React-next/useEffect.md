bind a function to run on changes of one or multiple states
```jsx
useEffect(func, [state1, state2, ...])
functin func() {...}
```

(leave the arry empty if you intent to run the `func` only once at start)