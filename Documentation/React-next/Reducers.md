Reducer.js
```jsx
const INITAL_STATE = [
	{name: 'ali', price:1500},
	{name:'pooyan', price: 200},
	{name:'akbar', price:7000}
];
  
const Reducer = (state = INITAL_STATE, action) => {
	switch (action.type) {
		case 'REMOVE_PRODUCT':
			return state.filter(item=>item.name!==action.name)
			break;
		case 'ADD_PRODUCT':
			return [...state, {name:action.name, price:action.price}]
			break;
		default:
			return state;
	}
}
  
export default Reducer
```

SecondReducer.js
```jsx
const INITAL_STATE = [
	{name: 'iphone 8', count:3},
	{name: 'iphone 9', count:5},
	{name: 'iphone 10', count:7}
];
  
const SecondReducer = (state = INITAL_STATE, action) => {
	switch (action.type) {
		default:
			return state;
	}
}
  
export default SecondReducer
```