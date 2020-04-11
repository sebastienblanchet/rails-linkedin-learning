# Notes

Generating migrations

```bash
rails generate migration MigrationName
```

or

```bash
rails generate model ModelName
```

Run the migration :
```bash
rails db:migrate

# stdout
== 20200128181810 DoNothingYet: migrating =====================================
== 20200128181810 DoNothingYet: migrated (0.0000s) ============================

== 20200128182204 CreateUsers: migrating ======================================
-- create_table(:users)
   -> 0.0112s
== 20200128182204 CreateUsers: migrated (0.0113s) =============================
```


<!-- naviagting the DB -->


```sql

> mysql -u railsuser -p
mysql> USE simple_cms_development
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> SHOW FIELDS FROM users;
\+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | bigint       | NO   | PRI | NULL    | auto_increment |
| first_name | varchar(255) | YES  |     | NULL    |                |
| last_name  | varchar(255) | YES  |     | NULL    |                |
| email      | varchar(255) | YES  |     | NULL    |                |
| created_at | datetime(6)  | NO   |     | NULL    |                |
| updated_at | datetime(6)  | NO   |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

-- HOW RAILS IS KEEPING TRACK OF MIGRATIONS
mysql> SELECT * FROM schema_migrations
    ->
    -> ;
+----------------+
| version        |
+----------------+
| 20200128181810 |
| 20200128182204 |
+----------------+
2 rows in set (0.00 sec)
```
Reverting migrations (DOWN):
