when you want to get a prototype bean through a singleton one, and get a newly constructed object each time, implement the `ApplicationContextAware` interface and use the following method:
```java
private ApplicationContext context;

@Override
public void setApplicationContext(ApplicationContext context) {
	this.context = context;
}

public Bean2 getBean2() {
	return context.getBean("Bean2", Bean2.class);
}
```