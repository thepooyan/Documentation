`controller.PersonController`:
```java
@RestController
public class PersonController {

	@GetMapping
	public ResponseEntity getAllPeople() {
		List<Person> Data = new PersonManager().getData();
		return new ResponseEntity(Data, HttpStatus.OK);
	}
}
```
returns lists as json!