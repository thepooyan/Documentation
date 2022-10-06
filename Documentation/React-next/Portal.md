refrence: [[Sample Portal Component]]

1. import:
```jsx
import reactDom from 'react-dom'
```

2. add modal container to `public/index.html`
3. portal component structure:
```jsx
//MAIN COMPONENT
const Modal = (props) => {
return (
	<>
	{
	reactDom.createPortal(<Component/>,document.getElementById('modalContainer'))
	}
	</>
)
}
  
export default Modal
```
```jsx
//contents of the modal
const content = () => {
	return (
		//...
	)
}
```