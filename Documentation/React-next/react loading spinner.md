### example:
```jsx
const [isLoading, setIsLoading] = useState(false);

async function getData() {
	setIsLoading(true);
	const response = await fetch("URL");
	const data = await response.json();
	console.log(data);
	setIsLoading(false);
}

const app = () => {
	return (
		<>
			{isLoading && <LoadingComp/>}
			{!isLoading && <MainComp/>}
		</>
	)
}
```

*refrence:* [[Fetch with Promise]], [[Async Await]], [[Basics]]