```xml
<persistence xmlns="https://jakarta.ee/xml/ns/persistence" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="3.0">

    <persistence-unit name="pu1" transaction-type="RESOURCE_LOCAL">
         <provider>org.hibernate.jpa.HibernatePersistenceProvider</provider>  
        <properties>
	            <property name="connection.driver_class" value="com.mysql.cj.jdbc.Driver"/>
	            <property name="hibernate.connection.url" value="jdbc:mysql://localhost:3306/Uni_DB"/>
            <property name="hibernate.connection.username" value="root"/>
            <property name="hibernate.connection.password" value="1234"/>
            <property name="hibernate.dialect" value="org.hibernate.dialect.MySQLDialect"/>
            <property name="hibernate.show_sql" value="true"/>
            <property name="hibernate.hbm2ddl.auto" value="create"/>
        </properties>
    </persistence-unit>
</persistence>
```

- hbm2ddl:
	- create-drop: creates the table at start and drops it at end
	- update: creates the tables and leaves the other ones alone
	- create: ???