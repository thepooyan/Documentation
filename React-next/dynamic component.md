```jsx
import React from 'react'
import { useParams } from 'react-router-dom'
  
const Login = () => {
	const param = useParams();
	console.log(param.mobileId)
		return (
			<div>
				This is the Dynamic Component
				which will be renderd depending on the
				route (param.mobileId)
			</div>
		)
}
  
export default Login
```