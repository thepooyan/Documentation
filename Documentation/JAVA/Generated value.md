1. normal (old) UUID:
```java
@Entity
public class User {
	@Id;
	@GeneratedValue(strategy = GenerationType.UUID)
	private string id;
}
```

2. new hibernate UUID
```java
@Entity
public class User {
	@Id;
	@GeneratedValue(strategy = GenerationType.AUTO)
	private UUID id;
}
```

3. sequence?!? (database has to support it and it is the best option if available, like oracle)
```java
@Entity
public class User {
	@Id;
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int id;//?
}
```

4. table: creates a table to store id
```java
@Entity
public class User {
	@Id;
	@GeneratedValue(strategy = GenerationType.TABLE)
	private int id;
}
```
[[Generated value generator]]