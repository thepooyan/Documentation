[[hibernate_pom.xml]]
![[hibernate.cfg.xml]]
![[productEntity.hbm.xml]]

MainClass:
```java
SessionFactory factory = HibernateUtil.getSessionFactory();
Session session = factory.openSession();
session.getTransaction().begin();

session.persist(entity);

session.getTransaction().commit();
session.close();
```

- for `deleteById(int id)` create an Entity and fill the id, then `session.remove(Entity)`
- `transaction` is not required for select ([[hibernate select|implement]])
- [[hibernate select all (query)|select all]]
- [[hibernate find by price greater than]]

[[hibernate lifecycles]]
[[hibernate batch insert]]
[[Jakarta persistence API (JPA)]]
[[HQL]]
[[JPQL]]
[[Relations (JPA, Hibernate, spring data jpa)]]