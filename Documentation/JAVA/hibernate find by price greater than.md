this query uses [[HQL]]
```java
Query query = session.createQuery("from table p where p.price >= :min");
query.setParameter("min", 1200);
```

![[JPA select greater than]]