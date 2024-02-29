[[JPA relation cascade]]
[[JPA relation fetch]]
[[bidirectional]]
user entity:
```java
@Entity
@Data
public class User {
	@Id
	private int id;
	private int username;
	private int password;

	@OneToOne
	@JoinColumn(name = "user_info_id", refrencedColumn = "id")
	private UserInformation userInformation;
}
```

user information entity:
```java
@Entity
@Data
public class UserInformation {
	@Id
	private int id;
	private String name;
	private String lastName;
	private String address;
}
```
(
	`referenced column` is the name of the PK of the table you want to connect to.
	this creates a new filed in user table named "user_info_id" that references the id of the other table (user information)
)