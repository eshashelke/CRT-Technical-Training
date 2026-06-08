# Day 9 - SQL DML, TCL and DCL Operations

## Overview

On Day 9 of Campus Recruitment Training (CRT), I practiced SQL commands related to data manipulation, transaction control, and database security.

The practical focused on updating records, deleting records, using COMMIT and ROLLBACK, managing users, and granting or revoking privileges.

---

## Topics Covered

### 1. Modify Table Structure

Changed the size of an existing column.

Example:

```sql
ALTER TABLE student
MODIFY(sname VARCHAR2(10));
```

---

### 2. Update Records

Updated records using conditions.

Examples:

```sql
UPDATE student
SET sname='Saijal'
WHERE stuid=3;
```

```sql
UPDATE student
SET ssal=0
WHERE scity='Pune';
```

---

### 3. Rollback Transaction

Used ROLLBACK to undo changes before COMMIT.

```sql
ROLLBACK;
```

---

### 4. Update Multiple Records

Updated multiple rows using the IN operator.

```sql
UPDATE student
SET pincode=442211
WHERE stuid IN (1,2,3);
```

---

### 5. Commit Transaction

Saved changes permanently.

```sql
COMMIT;
```

---

### 6. Delete Records

Deleted single and multiple records.

Examples:

```sql
DELETE FROM student
WHERE stuid=1;
```

```sql
DELETE FROM student
WHERE stuid IN (2,3);
```

---

### 7. Insert New Records

Added new student records using substitution variables.

```sql
INSERT INTO student
VALUES(&stuid,'&sname','&scity','&ssal','&pincode');
```

---

### 8. Create Database User

Created a new database user.

```sql
CREATE USER sqladmin
IDENTIFIED BY oracle;
```

---

### 9. Grant Privileges

Granted system and object privileges.

Examples:

```sql
GRANT CONNECT TO sqladmin;

GRANT CREATE TABLE TO sqladmin;

GRANT SELECT, INSERT, UPDATE, DELETE
ON student
TO sqladmin;
```

---

### 10. Revoke Privileges

Removed granted permissions.

```sql
REVOKE CREATE TABLE
FROM sqladmin;
```

---

### 11. Drop User

Removed the database user.

```sql
DROP USER sqladmin;
```

---

## SQL Concepts Learned

### DML (Data Manipulation Language)

- UPDATE
- DELETE
- INSERT

### TCL (Transaction Control Language)

- COMMIT
- ROLLBACK

### DCL (Data Control Language)

- GRANT
- REVOKE

### User Management

- CREATE USER
- DROP USER

---

## Errors Encountered and Learning

### Invalid UPDATE Syntax

Incorrect:

```sql
WHERE stuid=1,2,3;
```

Error:

```text
ORA-00933
```

Correct:

```sql
WHERE stuid IN (1,2,3);
```

---

### NULL Comparison

Incorrect:

```sql
WHERE pincode = NULL;
```

No rows updated.

Reason:
NULL cannot be compared using = operator.

---

### Typing Mistake

Incorrect:

```sql
CREATE USER sqladmin IENTIFIED BY oracle;
```

Error:

```text
ORA-00922
```

Correct:

```sql
CREATE USER sqladmin IDENTIFIED BY oracle;
```

---

## Files

| File Name | Description |
|------------|------------|
| Day9_SQL_Transactions_and_DCL.sql | SQL script demonstrating DML, TCL and DCL operations. |

---

## Learning Outcome

By completing this practical, I gained practical experience with:

- Updating database records
- Deleting records
- Transaction management
- Using COMMIT and ROLLBACK
- Granting and revoking privileges
- Creating and managing database users
- Understanding common Oracle SQL errors

These concepts are essential for SQL interviews and database administration.

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

✅ Day 9 - SQL DML, TCL and DCL Operations