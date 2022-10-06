(actions for Reducer.js)
```jsx
export const add = (name, price) => {
	return { type: 'ADD_PRODUCT', name: name, price: price }
}

export const remove = (name) => { //possibly id goes here!
	return { type: 'REMOVE_PRODUCT', name: name }
}
```