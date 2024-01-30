this query uses [[HQL]]:
```java
Query query = session.createQuery("from table");
List<Entity> result = query.getResultList();
```
![[JPA select all]]