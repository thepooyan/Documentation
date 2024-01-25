Dependencies: `mysql-connector`, `dbcp2` ([[DBCP|what is it?]])
```
<JDBC name="database logs" tableName="logs">
	<ConnectionFactory class="log4j.ConnectionFactory" method="getConnection"/>
	<Column name="id" pattern="%u"/>
	<Column name="method" pattern="%M"/>
	<Column name="massage" pattern="%m"/>
	<Column name="time" isEventTimestamp="true"/>
</JDBC>
```

- %u => unique id
[[patter layout (variables)]]
***
table: logs

id | method | massage | time
-- | -- | -- | --
(PK)varchar | varchar | varchar | timestamp

Factory: log4j.ConnectionFactory
```java
import org.apache.commons.bdcp2.BasicDataSource;
import java.sql.Connection;

public class B {
	private static BasicDataSource dataSource;
	private B() {}
	public static Connection getConnection() throws SQLException {
		if (dataSource == null) {
			dataSource = new BasicDataSource();
			dataSource.setUrl("jdbc:mysql://localhost:3306/my_database");
			dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
			dataSource.setUsername("Username");
			dataSource.setPassword("Password");
		}
		return datasource.getConnection();
	}
}
```