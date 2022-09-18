nav link provieds you with a variable to know if the link is active or not
syntax: (*needs import*)
```jsx
//classname with css/sass module
<NavLink to='/tablets' className={({isActive})=>isActive?styles.active:''}>tablets</NavLink>

//OR inline style
<NavLink to='/tablets' style={({isActive})=>isActive?{backgroundColor:'red'}:{}}>tablets</NavLink>
```

(see [[QueryNavLink]])