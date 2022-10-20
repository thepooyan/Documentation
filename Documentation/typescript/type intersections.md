```ts
type Car = {
	speed: number
}
type Buyable = {
	price: number
}
  
type AffordableCar = Car & Buyable
  
const pride: AffordableCar = {
	speed: 10,
	price: 10000000000000
}
// OR
const pegout: Car & Buyable = {
	price: 10,
	speed: 10
}
```