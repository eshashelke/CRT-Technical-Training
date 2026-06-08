# Day 8 - SQL DDL and DML Operations

## Overview

On Day 8 of Campus Recruitment Training (CRT), I practiced fundamental SQL operations using Oracle SQL.

The session focused on creating tables, inserting records, modifying table structures, copying data between tables, and working with user input through substitution variables.

---

## Topics Covered

### 1. Create Table

Created a Student table with different data types.

Example:

```sql
CREATE TABLE student(
    stuid NUMBER PRIMARY KEY,
    sname VARCHAR2(50),
    scity CHAR(10),
    ssal NUMBER(8,2)
);
```

---

### 2. Insert Records

Inserted records into the table using INSERT statements.

Example:

```sql
INSERT INTO student
VALUES (1,'Clark','Nagpur',25000);
```

---

### 3. Commit Transaction

Saved the inserted data permanently.

```sql
COMMIT;
```

---

### 4. Retrieve Data

Displayed all records using:

```sql
SELECT * FROM student;
```

---

### 5. Create Table from Existing Table

Created a duplicate table.

```sql
CREATE TABLE student2 AS
SELECT * FROM student;
```

---

### 6. Create Table with Selected Columns

Created a new table containing only required columns.

```sql
CREATE TABLE student3 AS
SELECT stuid, sname FROM student;
```

---

### 7. Describe Table Structure

Used the DESC command to view table structure.

```sql
DESC student;
```

---

### 8. Rename Table

Renamed an existing table.

```sql
ALTER TABLE student3
RENAME TO student4;
```

---

### 9. Alter Table

Added a new column to the existing table.

```sql
ALTER TABLE student
ADD (pincode CHAR(6));
```

---

### 10. User Input using Substitution Variables

Inserted records dynamically.

Example:

```sql
INSERT INTO student
VALUES(&stuid,'&sname','&scity','&ssal','&pincode');
```

---

### 11. Insert Data from One Table to Another

Copied data between tables.

```sql
INSERT INTO student2
SELECT stuid,sname,scity,ssal
FROM student;
```

---

## SQL Concepts Learned

- DDL Commands
- DML Commands
- CREATE TABLE
- INSERT INTO
- SELECT
- COMMIT
- ALTER TABLE
- RENAME TABLE
- DESC Command
- CREATE TABLE AS SELECT
- Substitution Variables
- Data Copy Operations

---

## Errors Encountered and Learned

### Missing FROM Keyword

Incorrect:

```sql
SELECT * student;
```

Error:

```text
ORA-00923: FROM keyword not found
```

Correct:

```sql
SELECT * FROM student;
```

---

### Too Many Values

Error occurred because the destination table had fewer columns.

```text
ORA-00913: too many values
```

Solution:

```sql
INSERT INTO student2
SELECT stuid,sname,scity,ssal
FROM student;
```

---

### Invalid Column Value

Error:

```text
ORA-00984: column not allowed here
```

Reason:
A string value was entered for a NUMBER field.

---

## Files

| File Name | Description |
|------------|------------|
| Day8_SQL_Practice.sql | SQL commands demonstrating DDL and DML operations. |

---

## Learning Outcome

By completing this SQL practical, I gained hands-on experience with:

- Database creation
- Table management
- Data insertion
- Data retrieval
- Schema modification
- Copying table structures
- Copying records between tables
- Understanding common Oracle SQL errors

These are fundamental concepts required for database management and technical interviews.

---

## CRT Progress

✅ Day 1 - Basic Programming and Recursion

✅ Day 2 - Searching and Sorting Algorithms

✅ Day 3 - Singly Linked List Operations

✅ Day 4 - Stack and Queue Data Structures

✅ Day 5 - Binary Search Tree and Tree Traversals

✅ Day 6 - Graph Data Structure using Adjacency Matrix

✅ Day 7 - Java HashMap Collection Framework

✅ Day 8 - SQL DDL and DML Operations