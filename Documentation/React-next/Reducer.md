# THE USE REDUCER HOOK
import and structure:
**important: reducer fun has to be declared outside the main function of the component**
```jsx
import { useReducer } from 'react';

const func = (state, action) => {
	switch (action) {
		case 'inc':
			state++;
			break;
		case 'dec':
			state--;
			break;
	}
	return state
}

function app() {
		const [state, dispatch] = useReducer(func, 0);
		dispatch('inc');
	return (
		<>
			{state}
		</>
	)
}
```
- reducer is used for changabel data that are complicated and/or have long proccesses that can happen to them. like and arry of objects of data, like product infomation.
- reducer and redux have similar syntax