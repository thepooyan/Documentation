when defining a bean in [[application-context.xml]], use the following syntax:
```xml
<bean name="hello" class="Class1" autowire="byType"/>
```

all the properties will be filled out automatically based on your *other beans* and their type.

- by name:
	if you give `autowire` the `byName` value, all the beans with the same name as your properties will be connected.
- by constructor: for constructor injections (will be done by type default)