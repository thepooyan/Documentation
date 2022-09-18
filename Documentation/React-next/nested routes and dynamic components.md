more topics: [[NavLink]], [[QueryNavLink]]

```jsx
<Route path="/mobiles" element={<Mobiles/>}>
	<Route path=":mobileId" element={<DynamicComp/>}/>
	<Route index element={<h2>Choose a mobile!<h2/>}
</Route>
```

when usuing this route, anypage that gets referd to after "/mobiles" will be rendered in the *Dynamic component* 
![[dynamic component]]
of course it needs to be specifed where to render the Dynamic components since the route we used is **nested**. which will be done via **<Outlet/>** component:
![[Mobiles]]
