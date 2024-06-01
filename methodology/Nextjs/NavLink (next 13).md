```tsx
'use client'
import Link from 'next/link'
import { usePathname } from 'next/navigation';
import { ReactNode } from 'react';
  
interface props {
  href: string,
  children: ReactNode,
  activeClass?: string
  className?: string
}
const NavLink = ({href, children, activeClass="active", className=""}:props) => {
  const pathname = usePathname();
	return (
		<Link href={href} className={`${href===pathname?activeClass:''} ${className}`}>
				{children}
		</Link>
	)
}
  
export default NavLink
```