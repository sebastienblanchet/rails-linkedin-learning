# Notes

**ActiveRecords**

## Intro

Launch rails console:

```bash
rails console -e development
rails c
# this is just IRB but with rails project loaded in
```

Example but this is the same database
```ruby
Loading development environment (Rails 6.0.2.1)
2.6.5 :001 > subject = subject.new
Traceback (most recent call last):
        1: from (irb):1
NoMethodError (undefined method `new' for nil:NilClass)
2.6.5 :002 > subject = Subject.new
   (0.4ms)  SET NAMES utf8mb4,  @@SESSION.sql_mode = CONCAT(CONCAT(@@sql_mode, ',STRICT_ALL_TABLES'), ',NO_AUTO_VALUE_ON_ZERO'),  @@SESSION.sql_auto_is_null = 0, @@SESSION.wait_timeout = 2147483
 => #<Subject id: nil, name: nil, position: nil, visible: nil, created_at: nil, updated_at: nil>
2.6.5 :003 > subject.name = "Seb"
 => "Seb"
2.6.5 :004 >
```

## Creating

Can use hashes (:name => ):
```bash
Loading development environment (Rails 6.0.2.1)
2.6.5 :001 > subject = Subject.new(:name => "First subject")
   (0.5ms)  SET NAMES utf8mb4,  @@SESSION.sql_mode = CONCAT(CONCAT(@@sql_mode, ',STRICT_ALL_TABLES'), ',NO_AUTO_VALUE_ON_ZERO'),  @@SESSION.sql_auto_is_null = 0, @@SESSION.wait_timeout = 2147483
 => #<Subject id: nil, name: "First subject", position: nil, visible: nil, created_at: nil, updated_at: nil>
2.6.5 :002 >
2.6.5 :003 > subject.save
   (0.2ms)  BEGIN
  Subject Create (0.5ms)  INSERT INTO `subjects` (`name`, `created_at`, `updated_at`) VALUES ('First subject', '2020-04-11 21:04:30.673386', '2020-04-11 21:04:30.673386')
   (1.1ms)  COMMIT
 => true
# Check if this is new or not i.e. NOT been saved
2.6.5 :004 > subject.new_record?
 => false
2.6.5 :005 >
```

## Updating

```ruby
subject = Subject.find({{id}});
# do some changes
subject.save
```

## Delete

```ruby
subject = Subject.find({{id}});
subject.destroy
2.6.5 :002 > subject.destroy
   (0.2ms)  BEGIN
  Subject Destroy (0.5ms)  DELETE FROM `subjects` WHERE `subjects`.`id` = 1
   (1.1ms)  COMMIT
 => #<Subject id: 1, name: "First subject", position: nil, visible: true, created_at: "2020-04-11 21:04:30", updated_at: "2020-04-11 21:07:38">
```

## Find

```ruby
subject = Subject.find({{id}});
# can also use conditions
2.6.5 :006 > subject = Subject.where(:name => "Second")
  Subject Load (0.6ms)  SELECT `subjects`.* FROM `subjects` WHERE `subjects`.`name` = 'Second' LIMIT 11
 => #<ActiveRecord::Relation [#<Subject id: 2, name: "Second", position: nil, visible: nil, created_at: "2020-04-11 21:05:55", updated_at: "2020-04-11 21:05:55">]>

#  NEVER WANT TO DO THIS!!!!!! THIS IS A SQL INJECTION 
# I.e. DYNAMIC SQL search
User.where("first_name LIKE?", @query)

# chaining all this other shit
Subject.{order, limit, offset}

Subject.where(:visible =>  true).order(:position).limit(5)
```

## Associations

<!-- {one, one}  to {one, many}-->