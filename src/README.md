# README

Then install MySQL using Homebrew:

```bash
$ brew install mysql
```

Install brew services:

```bash
$ brew tap homebrew/services 
```

Load and start the MySQL service:

```bash
$ brew services start mysql 
```

## Configure DBs

Creating DB

```sql
SHOW DATABASES;
CREATE DATABASE simple_cms_development;
```

See users and create
```sql
SELECT host, user FROM mysql.user;
-- user name
-- pswd
CREATE USER 'rails_user'@'localhost' IDENTIFIED BY 'rails_user;
```

<!-- https://www.a2hosting.ca/kb/developer-corner/mysql/managing-mysql-databases-and-users-from-the-command-line -->

Granting privileges
```sql
SHOW GRANTS FOR 'rails_user'@'localhost';
-- GRANT ALL PRIVILEGES ON {dbName}.* TO '{userName}'@'localhost';
GRANT ALL PRIVILEGES ON simple_cms_development.* TO 'rails_user'@'localhost';
```
