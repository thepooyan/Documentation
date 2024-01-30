```java
public void whenThereAreMultipleEntities_ThenCreatesNewBatch() {
	try {
		//get session
		//get transaction
		transaction.begin();
	    for (int i = 0; i < 1000; i++) {
	        if (i > 0 && i % BATCH_SIZE == 0) {
	            entityManager.flush();
	            entityManager.clear();
	        }
	        Student student = createStudent("ali", 123);
	        entityManager.persist(student);
	    }
		transaction.commit();
	} catch(Exception e) {
		transaction.rollback();
	}
}
```