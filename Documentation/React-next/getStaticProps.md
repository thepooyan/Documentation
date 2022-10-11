is a function that runs on server and returns something in the props.
```js
export default function Home(props) {
	return (
		...
	)
}

export async function getStaticProps(context) {
	//code...
	return {
		props: {backEndData: 'data'},
		revalidate: 2 //(seconds),
		redirect: {destinations: '/URL'},
		notFound: true
	}
}
```
*the code inside getstatic props function runs on back end, so it can connect to file system, database, and is safe as the user WON'T be able to access it*
### revalidate: will generate the page after revalidate time if new request comes in.