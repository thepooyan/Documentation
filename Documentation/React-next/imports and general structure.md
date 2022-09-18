```jsx
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';

<Router>
	<Routes>
		<Route path="/" element={<Main/>}/>
		<Route path="/login" element={isLoggedIn?<Login/>:<SignUp/>}/>
		<Route path="/*" element={<NotFound/>}/>
	</Routes>
</Router>
```