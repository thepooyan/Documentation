*default fetch type is eager*
user entity:
```java
@Entity
@Data
public class User {
	@Id
	private int id;
	private int username;
	private int password;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_info_id", refrencedColumn = "id")
	private UserInformation userInformation;
}
```

- if fetch type is lazy user info is not selected from table when user is selected
- if you want to also see the result of selecting the user information, you should get the user information while the transaction of the select is still open, which would look like this;

```java
@Transactional // keeps the transaction open
public void selectSomething() {
	User user = repository.getById(5).get();
	UserInfo userinfo = user.getUserInfo(); //results in a new select query
	sout(userinfo);
}
```