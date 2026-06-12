/*
------------------------------------------------------------
Day 13 - Campus Recruitment Training (CRT)
------------------------------------------------------------

Topic:
SQL Constraints and Joins

Description:
This practice covers SQL constraints such as Primary Key,
Composite Key and Foreign Key along with table creation,
table alteration and different types of SQL joins.

Concepts Covered:
1. Primary Key
2. Composite Primary Key
3. Foreign Key
4. ALTER TABLE
5. INSERT INTO
6. LEFT JOIN
7. RIGHT JOIN
8. SELF JOIN
9. Relational Database Design

------------------------------------------------------------
*/









SQL*Plus: Release 11.2.0.2.0 Production on Tue Jun 9 10:32:41 2026

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

SQL> connect system/oracle
Connected.
SQL> create table person(
  2  pid number(4) not null primary key,
  3  fname varchar(9) not null,
  4  lname varchar(9),
  5  age number(3)
  6  );

Table created.

SQL> create table person2(
  2  pid number(4) not null,
  3  fname varchar(9) not null,
  4  lname varchar(9),
  5  age number(3),
  6  constraint pk_person primary key(pid,lname)
  7  );

Table created.

SQL> desc person
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(4)
 FNAME                                     NOT NULL VARCHAR2(9)
 LNAME                                              VARCHAR2(9)
 AGE                                                NUMBER(3)

SQL> desc person2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(4)
 FNAME                                     NOT NULL VARCHAR2(9)
 LNAME                                     NOT NULL VARCHAR2(9)
 AGE                                                NUMBER(3)


SQL> alter table person drop primary key;

Table altered.

SQL> desc person;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(4)
 FNAME                                     NOT NULL VARCHAR2(9)
 LNAME                                              VARCHAR2(9)
 AGE                                                NUMBER(3)


SQL> alter table person add primary key(pid);

Table altered.

SQL> alter table person2 drop primary key;

Table altered.

SQL> desc person2
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(4)
 FNAME                                     NOT NULL VARCHAR2(9)
 LNAME                                              VARCHAR2(9)
 AGE                                                NUMBER(3)

SQL> alter table person2 add primary key(pid);

Table altered.

SQL> desc person2
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(4)
 FNAME                                     NOT NULL VARCHAR2(9)
 LNAME                                              VARCHAR2(9)
 AGE                                                NUMBER(3)

SQL> alter table person2 drop primary key;

Table altered.

SQL> desc person2
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(4)
 FNAME                                     NOT NULL VARCHAR2(9)
 LNAME                                              VARCHAR2(9)
 AGE                                                NUMBER(3)

SQL> alter table person2 add constraint pk_person primary key(pid,lname);

Table altered.

SQL> desc person2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PID                                       NOT NULL NUMBER(4)
 FNAME                                     NOT NULL VARCHAR2(9)
 LNAME                                     NOT NULL VARCHAR2(9)
 AGE                                                NUMBER(3)









SQL> create table emp11(eno number(3) primary key, ename char(10), emob number(10), esal number(8,2), eadd varchar(20),ecity char(11), edoj date);

Table created.

SQL> create table dept(
  2  dno number(4),
  3  dname varchar(10),
  4  eno number(4),
  5  ecity varchar(9),
  6  foreign key (eno) references emp(eno));
foreign key (eno) references emp(eno))
                                 *
ERROR at line 6:
ORA-00904: "ENO": invalid identifier


SQL> create table dept(
  2  dno number(4),
  3  dname varchar(10),
  4  eno number(4),
  5  ecity varchar(9),
  6  foreign key (eno) references emp11(eno));

Table created.

SQL> desc dept;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DNO                                                NUMBER(4)
 DNAME                                              VARCHAR2(10)
 ENO                                                NUMBER(4)
 ECITY                                              VARCHAR2(9)

SQL> desc emp11
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENO                                       NOT NULL NUMBER(3)
 ENAME                                              CHAR(10)
 EMOB                                               NUMBER(10)
 ESAL                                               NUMBER(8,2)
 EADD                                               VARCHAR2(20)
 ECITY                                              CHAR(11)
 EDOJ                                               DATE



SQL>
SQL> CREATE TABLE department (
  2      dno INT PRIMARY KEY,
  3      dname VARCHAR(50)
  4  );

Table created.


SQL>
SQL> CREATE TABLE Orders (
  2      OID INT PRIMARY KEY,
  3      ProductName VARCHAR(50),
  4      Amount DECIMAL(10,2),
  5      eno INT,
  6      dno INT
  7  );

Table created.


SQL> INSERT ALL
  2    INTO Orders VALUES (1001,'Laptop',55000,101,1)
  3    INTO Orders VALUES (1002,'Mouse',1000,102,2)
  4    INTO Orders VALUES (1003,'Keyboard',1500,103,1)
  5    INTO Orders VALUES (1004,'Monitor',12000,105,2)
  6    INTO Orders VALUES (1005,'Printer',8000,108,3)
  7    INTO Orders VALUES (1006,'Scanner',7000,109,4)
  8    INTO Orders VALUES (1007,'Tablet',25000,101,1)
  9    INTO Orders VALUES (1008,'Mobile',20000,110,2)
 10    INTO Orders VALUES (1009,'Camera',30000,105,2)
 11    INTO Orders VALUES (1010,'Speaker',5000,108,3)
 12  SELECT * FROM dual;

10 rows created.

SQL> select * from orders;

       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1001 Laptop                                                  55000
       101          1

      1002 Mouse                                                    1000
       102          2

      1003 Keyboard                                                 1500
       103          1


       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1004 Monitor                                                 12000
       105          2

      1005 Printer                                                  8000
       108          3

      1006 Scanner                                                  7000
       109          4


       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1007 Tablet                                                  25000
       101          1

      1008 Mobile                                                  20000
       110          2

      1009 Camera                                                  30000
       105          2


       OID PRODUCTNAME                                            AMOUNT
---------- -------------------------------------------------- ----------
       ENO        DNO
---------- ----------
      1010 Speaker                                                  5000
       108          3


10 rows selected.

SQL> select * from department;

no rows selected


SQL> INSERT ALL
  2    INTO department VALUES (1,'HR')
  3    INTO department VALUES (2,'IT')
  4    INTO department VALUES (3,'Finance')
  5    INTO department VALUES (4,'Marketing')
  6    INTO department VALUES (5,'Sales')
  7    INTO department VALUES (6,'Admin')
  8    INTO department VALUES (7,'Production')
  9    INTO department VALUES (8,'Testing')
 10    INTO department VALUES (9,'Support')
 11    INTO department VALUES (10,'Research')
 12  SELECT * FROM dual;

10 rows created.

SQL> INSERT ALL
  2    INTO emp VALUES (101,'Amit',50000,'Pune',1)
  3    INTO emp VALUES (102,'Neha',55000,'Mumbai',2)
  4    INTO emp VALUES (103,'Rahul',60000,'Pune',1)
  5    INTO emp VALUES (104,'Priya',45000,'Nagpur',3)
  6    INTO emp VALUES (105,'Karan',70000,'Mumbai',2)
  7    INTO emp VALUES (106,'Sneha',52000,'Pune',1)
  8    INTO emp VALUES (107,'Rohit',48000,'Delhi',4)
  9    INTO emp VALUES (108,'Anjali',65000,'Nagpur',3)
 10    INTO emp VALUES (109,'Vikas',58000,'Delhi',4)
 11    INTO emp VALUES (110,'Pooja',62000,'Mumbai',2)
 12  SELECT * FROM dual;
  INTO emp VALUES (101,'Amit',50000,'Pune',1)
                                    *
ERROR at line 2:
ORA-01722: invalid number


SQL>
SQL> drop table emp;

Table dropped.

SQL> CREATE TABLE emp (
  2      eno INT PRIMARY KEY,
  3      ename VARCHAR(50),
  4      salary DECIMAL(10,2),
  5      ecity VARCHAR(50),
  6      dno INT
  7  );

Table created.

SQL> INSERT INTO emp (eno, ename, salary, ecity, dno)
  2  VALUES (101, 'Amit', 50000, 'Pune', 1);

1 row created.

SQL>
SQL> INSERT INTO emp (eno, ename, salary, ecity, dno)
  2  VALUES (102, 'Neha', 55000, 'Mumbai', 2);

1 row created.

SQL>
SQL> INSERT INTO emp (eno, ename, salary, ecity, dno)
  2  VALUES (103, 'Rahul', 60000, 'Pune', 1);

1 row created.

SQL>
SQL> INSERT INTO emp (eno, ename, salary, ecity, dno)
  2  VALUES (104, 'Priya', 45000, 'Nagpur', 3);

1 row created.

SQL>
SQL> INSERT INTO emp (eno, ename, salary, ecity, dno)
  2  VALUES (105, 'Karan', 70000, 'Mumbai', 2);

1 row created.

SQL>
SQL> INSERT INTO emp (eno, ename, salary, ecity, dno)
  2  VALUES (106, 'Sneha', 52000, 'Pune', 1);

1 row created.

SQL>
SQL> INSERT INTO emp (eno, ename, salary, ecity, dno)
  2  VALUES (107, 'Rohit', 48000, 'Delhi', 4);

1 row created.

SQL>
SQL> INSERT INTO emp (eno, ename, salary, ecity, dno)
  2  VALUES (108, 'Anjali', 65000, 'Nagpur', 3);

1 row created.

SQL>
SQL> INSERT INTO emp (eno, ename, salary, ecity, dno)
  2  VALUES (109, 'Vikas', 58000, 'Delhi', 4);

1 row created.

SQL>
SQL> INSERT INTO emp (eno, ename, salary, ecity, dno)
  2  VALUES (110, 'Pooja', 62000, 'Mumbai', 2);

1 row created.

SQL>
SQL> COMMIT;

Commit complete.

SQL> desc emp;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ENO                                       NOT NULL NUMBER(38)
 ENAME                                              VARCHAR2(50)
 SALARY                                             NUMBER(10,2)
 ECITY                                              VARCHAR2(50)
 DNO                                                NUMBER(38)

SQL> desc orders
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 OID                                       NOT NULL NUMBER(38)
 PRODUCTNAME                                        VARCHAR2(50)
 AMOUNT                                             NUMBER(10,2)
 ENO                                                NUMBER(38)
 DNO                                                NUMBER(38)

SQL> desc department
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DNO                                       NOT NULL NUMBER(38)
 DNAME                                              VARCHAR2(50)


SQL> select * from orders;

       OID PRODUCTNAME      AMOUNT        ENO        DNO
---------- ------------ ---------- ---------- ----------
      1001 Laptop            55000        101          1
      1002 Mouse              1000        102          2
      1003 Keyboard           1500        103          1
      1004 Monitor           12000        105          2
      1005 Printer            8000        108          3
      1006 Scanner            7000        109          4
      1007 Tablet            25000        101          1
      1008 Mobile            20000        110          2
      1009 Camera            30000        105          2
      1010 Speaker            5000        108          3

10 rows selected.

SQL> alter table emp modify (ename varchar(12));

Table altered.

SQL> alter table emp modify (ecity varchar(12));

Table altered.

SQL> select * from emp;

       ENO ENAME            SALARY ECITY               DNO
---------- ------------ ---------- ------------ ----------
       101 Amit              50000 Pune                  1
       102 Neha              55000 Mumbai                2
       103 Rahul             60000 Pune                  1
       104 Priya             45000 Nagpur                3
       105 Karan             70000 Mumbai                2
       106 Sneha             52000 Pune                  1
       107 Rohit             48000 Delhi                 4
       108 Anjali            65000 Nagpur                3
       109 Vikas             58000 Delhi                 4
       110 Pooja             62000 Mumbai                2

10 rows selected.


SQL> alter table department modify (dname varchar(12));

Table altered.

SQL> select * from department;

       DNO DNAME
---------- ------------
         1 HR
         2 IT
         3 Finance
         4 Marketing
         5 Sales
         6 Admin
         7 Production
         8 Testing
         9 Support
        10 Research

10 rows selected.


SQL> select emp.ename, orders.oid from emp left join orders on emp.eno=orders.eno order by emp.ename;

ENAME               OID
------------ ----------
Amit               1001
Amit               1007
Anjali             1010
Anjali             1005
Karan              1004
Karan              1009
Neha               1002
Pooja              1008
Priya
Rahul              1003
Rohit

ENAME               OID
------------ ----------
Sneha
Vikas              1006

13 rows selected.

SQL> select emp.ename, orders.oid from orders right join emp on orders.eno=emp.eno order by orders.oid;

ENAME               OID
------------ ----------
Amit               1001
Neha               1002
Rahul              1003
Karan              1004
Anjali             1005
Vikas              1006
Amit               1007
Pooja              1008
Karan              1009
Anjali             1010
Priya

ENAME               OID
------------ ----------
Sneha
Rohit

13 rows selected.


SQL> select A.ename as empname1, B.ename as empname2, A.ecity from emp A, emp B where A.eno <> B.eno and A.ecity = B.ecity order by A.ecity;

EMPNAME1     EMPNAME2     ECITY
------------ ------------ ------------
Vikas        Rohit        Delhi
Rohit        Vikas        Delhi
Karan        Neha         Mumbai
Pooja        Neha         Mumbai
Pooja        Karan        Mumbai
Karan        Pooja        Mumbai
Neha         Karan        Mumbai
Neha         Pooja        Mumbai
Priya        Anjali       Nagpur
Anjali       Priya        Nagpur
Sneha        Amit         Pune

EMPNAME1     EMPNAME2     ECITY
------------ ------------ ------------
Rahul        Sneha        Pune
Amit         Sneha        Pune
Rahul        Amit         Pune
Amit         Rahul        Pune
Sneha        Rahul        Pune

16 rows selected.

