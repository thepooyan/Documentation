this query uses [[JPQL]]:
```java
Query query = entityManager.createQuery("select p from table p");
List<Entity> result = query.getResultList();
```