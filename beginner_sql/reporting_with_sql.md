# Reporting with SQL
## 166-minute Databases Course

## About this Course

SQL can be used to generate reports and present information on websites. This course covers powerful SQL features in helping you answer more interesting questions about your data.

## What you'll learn:

* Ordering, limiting and paging through a result set
* Manipulating text
* Working with numbers
* Working with dates

## Ordering, Limiting and Paging Results

Databases can store a lot of data. Retrieving all of that in one go isn't performant or helpful to users.

1. Overview

In this video we'll take a look at what we're going to cover in this course.

Cheat Sheets

SQL Basics
https://github.com/treehouse/cheatsheets/blob/master/sql_basics/cheatsheet.md
Reporting with SQL https://github.com/treehouse/cheatsheets/blob/master/reporting_with_sql/cheatsheet.md

2. Retrieving Results in a Particular Order

In this video we're going to take a look at ordering results, that is, retrieving data in a specific order.

Ordering by a single column criteria:
```
SELECT * FROM <table name> ORDER BY <column> [ASC|DESC];
```
* ASC is used to order results in ascending order.

* DESC is used to order results in descending order.

Examples:
```
SELECT * FROM books ORDER BY title ASC;
SELECT * FROM products WHERE name = "Sonic T-Shirt" ORDER BY stock_count DESC;
SELECT * FROM users ORDER BY signed_up_on DESC;
SELECT * FROM countries ORDER BY population DESC;
```
Ordering by multiple column criteria:
```
SELECT * FROM <table name> ORDER BY <column> [ASC|DESC],
                                    <column 2> [ASC|DESC],
                                    ...,
                                    <column n> [ASC|DESC];
```
Ordering is prioritized left to right.

Examples:
```
SELECT * FROM books ORDER BY    genre ASC,
                                title ASC;

SELECT * FROM books ORDER BY    genre ASC,
                                year_published DESC;

SELECT * FROM users ORDER BY    last_name ASC,
                                first_name ASC;
```
3. Ordering Results

4. Limiting the Number of Results

Databases can store massive amounts of data, and often you don't want to bring back all of the results. It's slow and it affects the performance for other users. In most cases you only want a certain subset of the rows.

--- SELECT * FROM <table> LIMIT <# of rows>;

SQLite, PostgreSQL and MySQL

To limit the number of results returned, use the LIMIT keyword.
```
SELECT <columns> FROM <table> LIMIT <# of rows>;
```
MS SQL

To limit the number of results returned, use the TOP keyword.
```
SELECT TOP <# of rows> <columns> FROM <table>;
```
Oracle

To limit the number of results returned, use the ROWNUM keyword in a WHERE clause.
```
SELECT <columns> FROM <table> WHERE ROWNUM <= <# of rows>;
```
5. Limiting Results

6. Paging Through Results

Limiting just by the top set of results is a fine thing, but let's say you wanted to generate a multi page report. Having a blog archive or listing search results in batches of 50 is where you want paging.

SQLite, PostgreSQL and MySQL

To page through results you can either use the OFFSET keyword in conjunction with the LIMIT keyword or just with LIMIT alone.
```
SELECT <columns> FROM <table> LIMIT <# of rows> OFFSET <skipped rows>;
SELECT <columns> FROM <table> LIMIT <skipped rows>, <# of rows>;
```
MS SQL and Oracle

To page through results you can either use the OFFSET keyword in conjunction with the FETCH keyword. Cannot be used with TOP.
```
SELECT <columns> FROM <table> OFFSET <skipped rows> ROWS FETCH NEXT <# of rows> ROWS ONLY;
```
7. Practice Session

Let's practice what we've learned in this section.

8. Review: Ordering, Limiting and Paging Results


## Working with Text

Being able to manipulate text is vital for displaying information in a more human readable or standardized way. In this stage we'll take a look at some key ways we can format and manipulate text.

What Are Functions?

Syntax definitions

* Keywords: Commands issued to a database. The data presented in queries is unaltered. e.g. SELECT, AS, FROM, ORDER BY, WHERE, IN, BETWEEN

* Operators: Performs comparisons and simple manipulation. e.g. =, >,<, <=...

* Functions: Presents data differently through more complex manipulation. e.g. LENGTH(), UPPER(), SUM()

A function looks like:
```
<function name>(<value or column>)
```
Example:
```
UPPER("Andrew Chalkley")
```

## Adding Text Columns Together

## Concatenating Text

You are not restricted by the column definitions in the database schema. You can join columns together so they're more human readable as one.

SQLite, PostgreSQL and Oracle
Use the concatenation operator ||.
```
SELECT <value or column> || <value or column> || <value or column>  FROM <table>;  
```
MS SQL
Use the concatenation operator +.
```
SELECT <value or column> + <value or column> + <value or column>  FROM <table>;  
```
MySQL, Postgres and MS SQL
Use the CONCAT() function.
```
SELECT CONCAT(<value or column>, <value or column>, <value or column>) FROM <table>;
```
--- Concatenation Operator: ||
```
SELECT  first_name || " " || last_name AS "Full Name",
        email AS "Email", phone AS "Phone"
          FROM customers ORDER BY last_name;
```

## Finding the Length of Text

## Getting the Length of a String

You can obtain lengths of pieces of text using the LENGTH() function.

To obtain the length of a value or column use the LENGTH() function.
```
SELECT LENGTH(<value or column>) FROM <tables>;
```
```
SELECT username, LENGTH(username) AS length FROM customers ORDER BY length DESC LIMIT 1;
```

## Changing the Case of Text Columns

There are two functions for changing cases, UPPER() and LOWER(). Let's look how to use them.

Use the UPPER() function to uppercase text.
```
SELECT UPPER(<value or column>) FROM <table>;
```
Use the LOWER() function to lowercase text.
```
SELECT LOWER(<value or column>) FROM <table>;
```
-- LOWER(<value or column>)
```
SELECT * FROM customers WHERE email LIKE "andrew@teamtreehouse.com";

SELECT first_name, last_name, LOWER(email) FROM customers;

SELECT zip FROM addresses WHERE country = "UK";

SELECT UPPER(zip) FROM addresses WHERE country = "UK";
```

## Changing Cases of Strings

## Creating Excerpts From Text

Wouldn't it be cool to create excerpts like this...

To create smaller strings from larger piece of text you can use the SUBSTR() function or the substring function.'
```
SELECT SUBSTR(<value or column>, <start>, <length>) FROM <table>;
```
```
SELECT name, SUBSTR(description, 1, 30) || "..." AS short_description, price FROM products;
```

## Replacing Portions of Text

Replacing parts of text is handy for privacy concerns, standardization or improving output.

To replace piece of strings of text in a larger body of text you can use the REPLACE() function.
```
SELECT REPLACE(<original value or column>, <target string>, <replacement string>) FROM <table>;

SELECT * FROM addresses
    WHERE REPLACE(state, "California", "CA") = "CA";
```

## Practice Session

Let's review the operators and functions we've used in this section and practice what we've learned.

Functions
* Perform complex transformations to values
* Used in SELECT, WHERE and ORDER BY

String Functions
* LENGTH(<value or column>)
* UPPER(<value or column>)
* LOWER(<value or column>)
* SUBSTR(<value or column>, <start>, <length>)
* REPLACE(<value or column>, <target>, <replacement>)

Definitions:
* Arguments or Parameters: "Values passed in to functions"

--test example
```
SELECT LENGTH("Test");
```

## Review: Working with Text

## Aggregate and Numeric Functions

Performing mathematic operations on groups of rows, like getting a total or getting an average is super handy. In this stage you'll learn this and more.

# Counting Results
Counting the number of rows is great for answering questions such as "How many users do we have?" and "How many sales happened this week?".

## Counting Results
To count rows you can use the COUNT() function.
```
SELECT COUNT(*) FROM <table>;
```
To count unique entries use the DISTINCT keyword too:
```
SELECT COUNT(DISTINCT <column>) FROM <table>;

SELECT COUNT(*) FROM customers WHERE first_name = "Andrew";

SELECT COUNT(DISTINCT category) FROM products;

SELECT COUNT(genre) AS scifi_book_count FROM books WHERE genre = "Science Fiction";
```
## Counting Groups of Rows
It’s often handy to group rows together to count them. For example you could answer the question "How many books are in each genre?"

To count aggregated rows with common values use the GROUP BY keywords:
```
SELECT COUNT(<column>) FROM <table> GROUP BY <column with common value>;

SELECT category FROM products GROUP BY category;


```
## Counting Groups

## Getting the Grand Total
Calculating grand totals are handy for answering questions like "How much was spent today on the site?" and "What are the total number of goals scored by a particular team?"

To total up numeric columns use the SUM() function.
```
SELECT SUM(<numeric column) FROM <table>;
SELECT SUM(<numeric column) AS <alias> FROM <table>
                                       GROUP BY <another column>
                                       HAVING <alias> <operator> <value>;
```

## Summing Values

## Calculating Averages
Averages are great for calculating averages of scores, reviews and sales.
To get the average value of a numeric column use the AVG() function.
```
SELECT AVG(<numeric column>) FROM <table>;
SELECT AVG(<numeric column>) FROM <table> GROUP BY <other column>;

SELECT AVG(cost) AS average FROM orders;
SELECT AVG(cost) AS average, user_id FROM orders GROUP BY user_id;
```

## Averaging Values

## Getting Minimum and Maximum Values
Finding the minimum and maximum values for particular column can help you get an insight in to what's happening in your data.

To get the maximum value of a numeric column use the MAX() function.
```
SELECT MAX(<numeric column>) FROM <table>;
SELECT MAX(<numeric column>) FROM <table> GROUP BY <other column>;
```
To get the minimum value of a numeric column use the MIN() function.
```
SELECT MIN(<numeric column>) FROM <table>;
SELECT MIN(<numeric column>) FROM <table> GROUP BY <other column>;

SELECT AVG(cost) AS average, MAX(cost) AS Maximum, MIN(cost) AS Minimum, user_id
          FROM orders GROUP BY user_id;
```
## Calculating the Minimum and Maximum Values

## Performing Math on Numeric Types
Operators aren't only for comparing values or concatenating strings. They can be used to perform mathematical operations.

Mathematical Operators:
* Multiply
/ Divide
+ Add
- Subtract
```
SELECT <numeric column> <mathematical operator> <numeric value> FROM <table>;

SELECT name, ROUND(price * 1.06, 2) AS "Price in Florida" FROM products;
```

## Performing Math Challenge

## Practice Session
Let's practice the new keywords, operators and functions you've learned in this section.

Functions

* Count(<column>)
* SUM(<column)
* AVG(<column)
* MAX(<column>)
* MIN(<column>)


SELECT DISTINCT <column> FROM <table>;

## Review: Aggregate and Numeric Functions

## Date and Time Functions
Displaying results based on dates and times is crucial for reporting and presenting information that's time sensitive or to perform analysis. We'll take a look at how we can use dates in our reporting and how we can format dates too.

### Differences Between Databases
A brief discussion on the differences between databases.

### Creating Up-to-the-Minute Reports
One of the powerful features in SQL is writing queries based on today's date and time. We'll use a function to get today's date.

SQLite:

* To get the current date use: DATE("now")

* To get the current time use: TIME("now")

* To get the current date time: DATETIME("NOW")

MS SQL:

* To get the current date use: CONVERT(date, GETDATE())

* To get the current time use: CONVERT(time, GETDATE())

* To get the current date time: GETDATE()

MySQL:

* To get the current date use: CURDATE()

* To get the current time use: CURTIME()

* To get the current date time: NOW()

Oracle and PostgreSQL:

* To get the current date use: CURRENT_DATE

* To get the current time use: CURRENT_TIME

*  To get the current date time: CURRENT_TIMESTAMP

```
SELECT DATE("now");
SELECT * FROM orders WHERE status = "placed" AND ordered_on = DATE("now");
```
### Today's Report

### Calculating Dates
Calculating dates are great for generating reports and dashboards that are dynamic in nature.

```
DATE(<time string>)

DATE(<time string>, <modifier>)

SELECT COUNT(*) FROM orders WHERE ordered_on BETWEEN DATE("now", "-7 days") AND DATE("now, "-7 day");

SELECT COUNT(*) FROM orders WHERE ordered_on BETWEEN DATE("now", "-1 days") AND DATE("now, "-7 day");

```

Treehouse uses mode analytics for reporting.

### Formatting Dates For Reporting
The dates stored in a database often don't suit a human reader. In this video we'll update the dates to be more friendly!

Date Datatypes

date  | time | datetime

```
-- STRFTIME(<format string>, <time string>, <modifier>)

SELECT *, ordered_on AS UK_date FROM orders;

SELECT *, STRFTIME("%d/%m/%Y",ordered_on) AS UK_date FROM orders;

SELECT title, STRFTIME("%m/%Y", date_released) AS month_year_released FROM movies;
```

### Formatting Dates and Times Quiz

### Practice Session
Let's practice all the date functions we've learned about.



### Review: Reporting with SQL
