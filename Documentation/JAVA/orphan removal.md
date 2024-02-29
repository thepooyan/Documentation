*this is dangerous! do not use it*

deletes the user information row if the user is deleted.

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

	@OneToOne(mappedBy = "userInformation", orphanRemoval = true)
	private User user;
}
```