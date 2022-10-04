```jsx
import { useDispatch, useSelector } from 'react-redux';
import { add, remove } from './redux/Actions';

const products = useSelector(state=>state.Reducer); //or state.SecondReducer
const dispatch = useDispatch();

dispatch(add('new', 1200))

```