```jsx
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from './ReducerCombiner';
  
const Store = configureStore({reducer: rootReducer})
  
export default Store;
```