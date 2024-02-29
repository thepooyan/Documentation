[[orphan removal]]
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

	@OneToOne(mappedBy = "userInformation") //choose which filed corrosponds
	private User user;
}
```