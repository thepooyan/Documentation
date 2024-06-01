```bash
-- Connecting to MySQL
mysql -u username -p

-- Database Operations
SHOW DATABASES;
CREATE DATABASE database_name;
USE database_name;
DROP DATABASE database_name;

-- Table Operations
SHOW TABLES;
CREATE TABLE table_name (
    column1_name column1_datatype,
    column2_name column2_datatype,
    ...
);
DESCRIBE table_name;
DROP TABLE table_name;

-- Data Operations
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);

SELECT * FROM table_name;
SELECT column1, column2 FROM table_name;

UPDATE table_name
SET column1 = value1, column2 = value2
WHERE some_column = some_value;

DELETE FROM table_name
WHERE some_column = some_value;

-- User and Privilege Management
CREATE USER 'username'@'host' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON database_name.* TO 'username'@'host';
REVOKE ALL PRIVILEGES ON database_name.* FROM 'username'@'host';
SHOW GRANTS FOR 'username'@'host';
DROP USER 'username'@'host';

FLUSH PRIVILEGES;

SELECT User, Host FROM mysql.user;

-- Exiting MySQL
EXIT;

SHOW VARIABLES LIKE 'port';

```