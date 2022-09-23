```jsx
import React from 'react'
import styles from './Modal.module.css'
import reactDom from 'react-dom'
  
const ModalContent = (props) => {
return (
<div className={styles.modal}>
<h2>Hi! i am modal</h2>
<button onClick={props.dismiss}>close</button>
</div>
)
}
  

const Modal = (props) => {

return (

<>

{reactDom.createPortal(<ModalContent dismiss={props.dismiss}/>, document.getElementById('modals'))}

</>

)

}

  

export default Modal
```