add `spring context` dependency from mvn repo.
[[application-context.xml]]

*all the beans are eager and singleton*

usage:
```java
ApplicationContext context = new ClassPathXmlApplicationContext("application-context.xml")

Class1 test = context.getBean("name", Class1.class);
```

prototype beans:
```xml
<bean name="fonal" class="folan" scope="prototype"/>
```

lazy beans:
```xml
<bean name="fonal" class="folan" lazy-init="true"/>
```

[[name vs id]]
[[c and p namespace]]