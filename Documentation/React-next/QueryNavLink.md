use query nav link instead of nav link, to keep the content of query strings when changing routes through links.

```jsx
import React from 'react';
import { NavLink, useLocation, useSearchParams } from 'react-router-dom';
  
const QueryNavLink = ({to, ...props }) => {
	let location = useLocation();
	const [search, setsearch] = useSearchParams()
	if (!search.get('search')) return <NavLink to={to} {...props}/>
	return <NavLink to={to + location.search} {...props}/>
};
  
export default QueryNavLink;
```

a link to actual sample component: [[assets/QueryNavLink.js]]