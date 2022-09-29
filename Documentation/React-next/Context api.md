### the context file: ProductsContext.js
```jsx
import React, { useState } from 'react'
  
export const productsContext = React.createContext();
  
	export const ProductsProvider = (props) => {
	  
	const [mystate, setMystate] = useState(0); //the variable to share. could be anything
	  
	return <productsContext.Provider value={[mystate, setMystate]}>{props.children}</productsContext.Provider>
}
```

### usage in components:
```jsx
import React, { useContext } from 'react'
import { productsContext } from './ProdectsContext';
  
const Comp = () => {
  
const products = useContext(productsContext);
	return (
		<div>{products}</div>
		)
}
  
export default Comp
```