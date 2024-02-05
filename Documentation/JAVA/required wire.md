constructor autowires have to be used, unless they are not required:

```java
public class Folan {
	Bean2 bean2;
	Bean3 bean3;

	@Autowired(required = false)
	public Folan(Bean3 bean3) {
		this.bean3 = bean3;	
	}

	@Autowired(required = false)
	public Folan(Bean3 bean3, Bean2 bean2) {
		this.bean3 = bean3;	
		this.bean2 = bean2;	
	}
}
```