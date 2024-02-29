```xml
<bean name="bean1A" class="Bean1">
	<qualifier value="A"/>
	<property value="ali"/>
</bean>
<bean name="bean1B" class="Bean1">
	<qualifier value="B"/>
	<property value="saeed"/>
</bean>
```

```java
@Autowired
@Qualifier("A")
public void setBean1(Bean1 bean1) {
	this.bean1 = bean1;
}
```

> value of bean's id or name can be used as qualifier as well, as long as you don't define a qualifier 