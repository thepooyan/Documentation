```jsx
import { combineReducers } from 'redux';
import Reducer from './Reducer';
import SecondReducer from './SecondReducer';
  
const rootReducer = combineReducers({
	Reducer: Reducer, //alias used in useselector
	SecondReducer: SecondReducer
})
  
export default rootReducer
```