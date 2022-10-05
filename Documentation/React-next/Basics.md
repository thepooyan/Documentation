`props.children > returns everything between the tags!`


test button that has default type but could accept other types as well
```jsx
const Button(props) => {
	return (
		<button type={"button" || props.type}>{props.children}</button>
	)
}
```

this will run the comp only if variable is true: `variable && <Comp/>`


# the public folder
should serve all static assets like images and fonts inside this folder.
it can be accessed via `/` in the begining of any url decalartion
(eigher js or sass)
```
src="/images/..."
url("/fonts/...")
```
