default cascade type should probably be `ALL`.
```java
@Entity
@Data
public class User {
	@Id
	private int id;
	private int username;
	private int password;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_info_id", refrencedColumn = "id")
	private UserInformation userInformation;
}
```

other types:o
- persist: when user is saved, user info is saves as well.
- remove: when user is removed user info is removed as well.
- persists: same thing when user is added
- all: everything

multiple choices:
```java
@OneToOne(cascade = {CascadeType.PRESIST, CascadeType.REMOVE});
```