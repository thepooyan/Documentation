index.js:
```jsx
import { Provider } from 'react-redux';
import Store from './redux/Store';
  
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
	<Provider store={Store}>
		<React.StrictMode>
			<App />
		</React.StrictMode>
	</Provider>
);
```