Product:
```java
public class Product {
	@Id
	private int id;
	private String name;
	private int price;

	@OneToMay(
		mappedBy = "product",
		cascade = CascadeType.ALL
	)
	List<ProductImage> productImages;
}
```
Product images:
```java
public class ProductImage {
	@Id
	private int id;
	private String url;

	@ManyToOne
	Product product;
}
```