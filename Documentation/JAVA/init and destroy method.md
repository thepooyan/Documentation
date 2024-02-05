```xml
<bean name="bean1" class="Bean1" init-method="init"/>
```

Bean1
```java
public class Bean1 {
	public void init() {
		//do something...
		bean2.something();
	}
}
```

calling `bean2` in constructor will not work, if `bean2` is injected via setter.
so to solve the problem and run some code when the bean is created it should be put in `init` method.
***
## destroy
works the same, and code will run when context closes or program is stopped.