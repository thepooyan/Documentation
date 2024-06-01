```js
import Link from 'next/link'
import { useRouter } from 'next/router'
import React from 'react'
  
const NavLink = (props) => {
	const router = useRouter();
	return (
		<Link href={props.href}>
			<a className={`${props.href===router.pathname?props.activeClass:''} ${props.className}`}>
				{props.children}
			</a>
		</Link>
	)
}
  
export default NavLink
```

[[NavLink (next 13)]]