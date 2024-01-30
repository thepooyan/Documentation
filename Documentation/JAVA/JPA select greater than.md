this query uses [[JPQL]]:
```java
Query query = entityManager.createQuery("select p from table p where p.price>=:min");
query.setParameter("min", 1200);
```