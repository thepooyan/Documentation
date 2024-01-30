```java
@Entity  
@SecondaryTables({  
        @SecondaryTable(name = "one"),  
        @SecondaryTable(name = "two")  
})
public class Entity {

	@Column(table = "one")
	private int id;

	@Column(table = "two")
	private int sldkfj;
}
```
***
```java
@Entity  
@SecondaryTable(name = "Hotel_Info")  
public class Entity {

	@Column(table = "Hotel_Info")
	private int id;
}
```