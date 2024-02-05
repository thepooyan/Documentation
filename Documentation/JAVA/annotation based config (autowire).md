![[application-context-annotation-based.xml]]

then add the auto wired annotation above properties or constructor:
```java
public class Folan {
	@Autowired
	Bean2 bean2;
	Bean3 bean3;

	@Autowired
	public Folan(Bean3 bean3) {
		this.bean3 = bean3;	
	}
}
```

** xml config always overrides annotation configs
 [[required wire]]
[[qualifier]]
[[component scan]]