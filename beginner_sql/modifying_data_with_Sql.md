# Modifying Data with SQL
## 80-minute Databases Course

## About this Course

At the heart of a dynamic application is a database. Whether the application is an eCommerce, sports team, social network or a productivity app on your phone the data needs to change over time. In this course we'll take a look at the underpinning SQL statements that are needed for every dynamic application.

What you'll learn

* Inserting rows of data
* Updating data for specific entries
* Removing data from any table
* Understanding transactions for data integrity
* Adding Data to a Database

Databases aren't just for reading information out of, they're also for storing information. In this stage we'll add data to a database table.

## Introduction to CRUD

Data isn't static, it changes over time. Databases allow you to modify that data over time.

* Four Main Data Operations

1. Create (add)
2. Read (search and filter)
3. Update (edit)
4. Delete (remove)

## Adding a Row to a Table

In this video we'll take a look at adding rows of information into a table.

* CRUD Operations and Keywords

| Operation | KEYWORD |
| --------- |:---------:|
| Create    | INSERT |
| Read      | SELECT |
| Update    | UPDATE |
| Delete    | DELETE |

1. Create (add)
2. Read (search and filter)
3. Update (edit)
4. Delete (remove)

SQL Used

Inserting a single row:
```
INSERT INTO <table> VALUES (<value 1>, <value 2>, ...);
```
This will insert values in the order of the columns prescribed in the schema.

Examples:
```
INSERT INTO users VALUES  (1, "chalkers", "Andrew", "Chalkley");
INSERT INTO users VALUES  (2, "ScRiPtKiDdIe", "Kenneth", "Love");

INSERT INTO movies VALUES (3, "Starman", "Science Fiction", 1984);
INSERT INTO movies VALUES (4, "Moulin Rouge!", "Musical", 2001);
```
Inserting a single row with values in any order:
```
INSERT INTO <table> (<column 1>, <column 2>) VALUES (<value 1>, <value 2>);
INSERT INTO <table> (<column 2>, <column 1>) VALUES (<value 2>, <value 1>);
```
Examples:
```
INSERT INTO users (username, first_name, last_name) VALUES ("chalkers", "Andrew", "Chalkley");
INSERT INTO users (first_name, last_name, username) VALUES  ("Kenneth", "Love", "ScRiPtKiDdIe");

INSERT INTO movies (title, genre, year_released) VALUES ("Starman", "Science Fiction", 1984);
INSERT INTO movies (title, year_released, genre) VALUES ("Moulin Rouge!", 2001,  "Musical");
```
See all of the SQL used in Modifying Data With SQL in the Modifying Data With SQL Cheatsheet.
https://github.com/treehouse/cheatsheets/blob/master/modifying_data_with_sql/cheatsheet.md

## Adding Multiple Rows to a Table

Inserting data into a table doesn't have to be restricted to one row at a time. You can insert multiple rows in a single statement.

SQL Used

Inserting multiple rows in a single statement:
```
INSERT INTO <table> (<column 1>, <column 2>, ...)
             VALUES
                    (<value 1>, <value 2>, ...),
                    (<value 1>, <value 2>, ...),
                    (<value 1>, <value 2>, ...);
```
Examples:
```
INSERT INTO users (username, first_name, last_name)
    VALUES
                  ("chalkers", "Andrew", "Chalkley"),
                  ("ScRiPtKiDdIe", "Kenneth", "Love");

INSERT INTO movies (title, genre, year_released)
     VALUES
                   ("Starman", "Science Fiction", 1984),
                   ("Moulin Rouge!", "Musical", 2001);

```

## Adding Data With SQL


## Adding Data to a Database Review

In this video we'll review all the ways you can insert data.

## Updating Data in a Database

With dynamic applications, things change all the time. For example, the stock counts of products or the scores in a live soccer match. We need a way to update the data. In this stage we'll discover how to do just that.

SQL Used

An update statement for all rows:
```
UPDATE <table> SET <column> = <value>;
```
The = sign is different from an equality operator from a WHERE condition. It's an assignment operator because you're assigning a new value to something.

Examples:
```
UPDATE users SET password = "thisisabadidea";
UPDATE products SET price = 2.99;
Update multiple columns in all rows:

UDPATE <table> SET <column 1> = <value 1>, <column 2> = <value 2>;
```
Examples:
```
UPDATE users SET first_name = "Anony", last_name = "Moose";
UPDATE products SET stock_count = 0, price = 0;
```

* CRUD Operations and Keywords

| Operation | KEYWORD |
| --------- |:---------:|
| Create    | INSERT |
| Read      | SELECT |
| Update    | UPDATE |
| Delete    | DELETE |

## Updating All Rows in a Table

Sometimes you need to update values in all rows. Maybe to fix an error or update the status of something. In this video we'll update data!

SQL Used

An update statement for all rows:
```
UPDATE <table> SET <column> = <value>;
```
The = sign is different from an equality operator from a WHERE condition. It's an assignment operator because you're assigning a new value to something.

Examples:
```
UPDATE users SET password = "thisisabadidea";
UPDATE products SET price = 2.99;
```
Update multiple columns in all rows:
```
UDPATE <table> SET <column 1> = <value 1>, <column 2> = <value 2>;
```
Examples:
```
UPDATE users SET first_name = "Anony", last_name = "Moose";
UPDATE products SET stock_count = 0, price = 0;
```
## Updating Specific Rows

It's more useful to update specific rows. Like with SELECT statements, you can use conditions to target specific rows.

Condition Examples
```
<column> <operator> <value>
<column> IN (<value 1>, <value 2>, ...)
<column> BETWEEN <lower value> AND <higher value>
<column> LIKE <pattern>
```

SQL Used

An update statement for specific rows:
```
UPDATE <table> SET <column> = <value> WHERE <condition>;
```
Examples:
```
UPDATE users SET password = "thisisabadidea" WHERE id = 3;
UPDATE blog_posts SET view_count = 1923 WHERE title = "SQL is Awesome";
```
Update multiple columns for specific rows:
```
UPDATE <table> SET <column 1> = <value 1>, <column 2> = <value 2> WHERE <condition>;
```
Examples:
```
UPDATE users SET entry_url = "/home", last_login = "2016-01-05" WHERE id = 329;
UPDATE products SET status = "SOLD OUT", availability = "In 1 Week" WHERE stock_count = 0;
```

## Updating Data With SQL
noah
Update <table> SET <column> = <value>;

Update <table> SET <column> = <value> WHERE <value>;

## Review and Practice

Let's review the different types of UPDATE statements and then practice it!

## Updating Data in a Database Review


## Deleting Data From a Database

There will come a time where you don't need certain data anymore. In this stage we'll look at removing all of the data from a table and how to remove specific rows too.

## Removing Data from All Rows in a Table

In this video we'll see how to delete all data from a table.

* CRUD Operations and Keywords

| Operation | KEYWORD |
| --------- |:---------:|
| Create    | INSERT |
| Read      | SELECT |
| Update    | UPDATE |
| Delete    | DELETE |

SQL Used

To delete all rows from a table:

```
DELETE FROM <table>;
```
Examples:
```
DELETE FROM logs;
DELETE FROM users;
DELETE FROM products;
```

## Removing Specific Rows

Like with SELECT and UPDATE statements, you can use a WHERE clause to narrow in on specific rows to remove for a table.

SQL Used

To delete specific rows from a table:
```
DELETE FROM <table> WHERE <condition>;
```
Examples:
```
DELETE FROM users WHERE email = "andrew@teamtreehouse.com";
DELETE FROM movies WHERE genre = "Musical";
DELETE FROM products WHERE stock_count = 0;
```

## Deleting Data With SQL

```
DELETE FROM <table>;
DELETE FROM <table> WHERE ... ;
```
## Review and Practice

Let's review deleting rows in different ways and practice the different techniques.

## Deleting Data From a Database Review

## Handling Errors When Manipulating Data

Sometimes you need to do multiple CRUD operations in a single go. This is where errors can occur. We'll tackle this with something called transactions.

## Introduction to Transactions

When seeding or populating a database for the first time, you will have lots of data to add. But what happens when there's an error in the middle of that process?

Definitions

* Autocommit - every statement you write gets saved to disk.
* Seeding - populating a database for the first time.
* Script file - a file containing SQL statements.

SQL Used

Switch autocommit off and begin a transaction:
```
BEGIN TRANSACTION;
```
Or simply:
```
BEGIN;
```
To save all results of the statements after the start of the transaction to disk:
```
COMMIT;
```

## Rolling Back from Transactions

Sometimes errors happen in the middle of a transaction. How do you recover from that? This video shows you how!

SQL Used

To reset the state of the database to before the begining of the transaction:
```
ROLLBACK;
```

## Transactions Review


## Databases with Frameworks

Many developers, while using databases, aren't required to write a single line of SQL code. They use special software libraries called ORMs.

Definitions

* ORM - Object-Relational Mapping – used to perform CRUD operations with a language other than SQL.
* DML - Data Manipulation Language - the subset of the SQL programming language that deals with CRUD operations.

Examples of ORMs

* Hibernate for Java http://hibernate.org/
* CoreData for Objective-C or Swift https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreData/index.html
* Django ORM for Python https://docs.djangoproject.com/en/1.9/#the-model-layer
* ActiveRecord for Ruby http://api.rubyonrails.org/classes/ActiveRecord/Base.html

## Modifying Data With SQL Review
