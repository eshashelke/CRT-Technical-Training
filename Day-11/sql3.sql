/*
------------------------------------------------------------
Day 11 - Campus Recruitment Training (CRT)
------------------------------------------------------------

Topic:
SQL Transactions, DQL, Aggregate Functions and
Built-in Functions

Concepts Covered:
1. Insert Records
2. Update Records
3. Savepoint
4. Rollback
5. Commit
6. Comparison Operators
7. Logical Operators
8. Subqueries
9. Aggregate Functions
10. Group By
11. Mathematical Functions

------------------------------------------------------------
*/





SQL*Plus: Release 11.2.0.2.0 Production on Sat Jun 6 10:52:08 2026

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

SQL> connect system/oracle
Connected.
SQL> desc student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUID                                     NOT NULL NUMBER
 SNAME                                              VARCHAR2(10)
 SCITY                                              CHAR(10)
 SSAL                                               NUMBER(8,2)
 PINCODE                                            CHAR(6)

SQL> select * from student;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Esha       Nagpur         100.23 423442
       102 Disha      Pune          3284.32 237864
       103 Saijal     Mumbai         234.34 324223
       104 Pallavi    Pune         24345.23 444444

SQL> insert into student values(105,"Shreya","Nashik",21763.32,442211);
insert into student values(105,"Shreya","Nashik",21763.32,442211)
                                        *
ERROR at line 1:
ORA-00984: column not allowed here


SQL> insert into student values(105,'Shreya','Nashik',21763.32,442211);

1 row created.

SQL> update student set scity='Nagpur' where stuid=105;

1 row updated.

SQL> savepoint A;

Savepoint created.

SQL> insert into student values(106,'Sumedh','Banglore',8724.324,772211);

1 row created.

SQL> savepoint B;

Savepoint created.

SQL> update student set pincode=111111 where stuid=106;

1 row updated.

SQL> rollback;

Rollback complete.

SQL> select * from student;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Esha       Nagpur         100.23 423442
       102 Disha      Pune          3284.32 237864
       103 Saijal     Mumbai         234.34 324223
       104 Pallavi    Pune         24345.23 444444

SQL> insert into student values(105,"Shreya","Nashik",21763.32,442211);
insert into student values(105,"Shreya","Nashik",21763.32,442211)
                                        *
ERROR at line 1:
ORA-00984: column not allowed here


SQL> insert into student values(105,'Shreya','Nashik',21763.32,442211);

1 row created.

SQL> update student set scity='Nagpur' where stuid=105;

1 row updated.

SQL> savepoint A;

Savepoint created.

SQL> insert into student values(106,'Sumedh','Banglore',8724.324,772211);

1 row created.

SQL> savepoint B;

Savepoint created.

SQL> update student set pincode=111111 where stuid=106;

1 row updated.

SQL> select * from student;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       105 Shreya     Nagpur       21763.32 442211
       106 Sumedh     Banglore      8724.32 111111
       101 Esha       Nagpur         100.23 423442
       102 Disha      Pune          3284.32 237864
       103 Saijal     Mumbai         234.34 324223
       104 Pallavi    Pune         24345.23 444444

6 rows selected.

SQL> rollback B;
rollback B
         *
ERROR at line 1:
ORA-02181: invalid option to ROLLBACK WORK


SQL> rollback to B;

Rollback complete.

SQL> select * from student;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       105 Shreya     Nagpur       21763.32 442211
       106 Sumedh     Banglore      8724.32 772211
       101 Esha       Nagpur         100.23 423442
       102 Disha      Pune          3284.32 237864
       103 Saijal     Mumbai         234.34 324223
       104 Pallavi    Pune         24345.23 444444

6 rows selected.

SQL>  select sysdate from dual;

SYSDATE
---------
06-JUN-26

SQL>  select systime from dual;
 select systime from dual
        *
ERROR at line 1:
ORA-00904: "SYSTIME": invalid identifier


SQL> select 3+2 from dual;

       3+2
----------
         5

SQL> select sname from student where ssal>20000.00;

SNAME
----------
Shreya
Pallavi

SQL> select sname from student where scity='Nagpur';

SNAME
----------
Shreya
Esha

SQL> select * from student where ssal<20000.00;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       106 Sumedh     Banglore      8724.32 772211
       101 Esha       Nagpur         100.23 423442
       102 Disha      Pune          3284.32 237864
       103 Saijal     Mumbai         234.34 324223

SQL> select * from student where ssal<>100.23;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       105 Shreya     Nagpur       21763.32 442211
       106 Sumedh     Banglore      8724.32 772211
       102 Disha      Pune          3284.32 237864
       103 Saijal     Mumbai         234.34 324223
       104 Pallavi    Pune         24345.23 444444

SQL> select * from student where ssal>100.23;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       105 Shreya     Nagpur       21763.32 442211
       106 Sumedh     Banglore      8724.32 772211
       102 Disha      Pune          3284.32 237864
       103 Saijal     Mumbai         234.34 324223
       104 Pallavi    Pune         24345.23 444444

SQL> select * from student where ssal>=100.23;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       105 Shreya     Nagpur       21763.32 442211
       106 Sumedh     Banglore      8724.32 772211
       101 Esha       Nagpur         100.23 423442
       102 Disha      Pune          3284.32 237864
       103 Saijal     Mumbai         234.34 324223
       104 Pallavi    Pune         24345.23 444444

6 rows selected.

SQL> select * from student where ssal<=100.23;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Esha       Nagpur         100.23 423442

SQL> select * from student where ssal > (select * from student where ssal=20000);
select * from student where ssal > (select * from student where ssal=20000)
                                    *
ERROR at line 1:
ORA-00913: too many values


SQL> select * from student where ssal > all (select * from student where ssal=20000);
select * from student where ssal > all (select * from student where ssal=20000)
                                        *
ERROR at line 1:
ORA-00913: too many values


SQL> select * from student where ssal > all (select ssal from student where ssal=20000);

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Esha       Nagpur         100.23 423442
       103 Saijal     Mumbai         234.34 324223
       102 Disha      Pune          3284.32 237864
       106 Sumedh     Banglore      8724.32 772211
       105 Shreya     Nagpur       21763.32 442211
       104 Pallavi    Pune         24345.23 444444

6 rows selected.

SQL> select * from student where scity='Nagpur' and ssal>20000.00;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       105 Shreya     Nagpur       21763.32 442211

SQL> select * from student where ssal > all (select ssal from student where ssal=20000.00);

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Esha       Nagpur         100.23 423442
       103 Saijal     Mumbai         234.34 324223
       102 Disha      Pune          3284.32 237864
       106 Sumedh     Banglore      8724.32 772211
       105 Shreya     Nagpur       21763.32 442211
       104 Pallavi    Pune         24345.23 444444

6 rows selected.

SQL> select * from student where ssal > any (select ssal from student where ssal>20000.00);

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       104 Pallavi    Pune         24345.23 444444

SQL> select * from student where ssal > all (select ssal from student where ssal>20000.00);

no rows selected

SQL> select count(*) from student;

  COUNT(*)
----------
         6

SQL> select count(sname) from student;

COUNT(SNAME)
------------
           6

SQL> select count(scity) from student where scity='Nagpur';

COUNT(SCITY)
------------
           2

SQL> select count(distinct scity) from student;

COUNT(DISTINCTSCITY)
--------------------
                   4

SQL> select count(distinct sname) from student;

COUNT(DISTINCTSNAME)
--------------------
                   6

SQL>
SQL> select sum(ssal) from student;

 SUM(SSAL)
----------
  58451.76

SQL> select sum(ssal) as sum from student;

       SUM
----------
  58451.76

SQL> select sum(ssal) as salary from student where ssal>100.00
  2  ;

    SALARY
----------
  58451.76

SQL> select sum(distinct ssal) as "total salary" from student where ssal>100.00
  2  ;

total salary
------------
    58451.76

SQL> select scity ,sum(ssal) as "total salary" from student group by scity;

SCITY      total salary
---------- ------------
Pune           27629.55
Nagpur         21863.55
Banglore        8724.32
Mumbai           234.34

SQL> select avg(ssal) from student;

 AVG(SSAL)
----------
   9741.96

SQL> select avg(ssal) as "average salary" from student;

average salary
--------------
       9741.96

SQL> select avg(ssal) as "average salary" from student group by scity;

average salary
--------------
     13814.775
     10931.775
       8724.32
        234.34

SQL> select min(ssal) from student;

 MIN(SSAL)
----------
    100.23

SQL> select max(ssal) from student;

 MAX(SSAL)
----------
  24345.23

SQL> select min(ssal) as "Min salary" from student;

Min salary
----------
    100.23

SQL> select min(ssal) as "Min salary" from student group by scity;;
select min(ssal) as "Min salary" from student group by scity;
                                                            *
ERROR at line 1:
ORA-00911: invalid character


SQL> select min(ssal) as "Min salary" from student group by scity;

Min salary
----------
   3284.32
    100.23
   8724.32
    234.34

SQL> select max(ssal) as "Max salary" from student group by scity;

Max salary
----------
  24345.23
  21763.32
   8724.32
    234.34

SQL> select abs(-44) from dual;

  ABS(-44)
----------
        44

SQL> select abs(44) from dual;

   ABS(44)
----------
        44

SQL> select power(2,4) from dual;

POWER(2,4)
----------
        16

SQL> select exp(4) from dual;

    EXP(4)
----------
  54.59815

SQL> select greatest(60,23,43,45) from dual;

GREATEST(60,23,43,45)
---------------------
                   60

SQL> select floor(4.7) from dual;

FLOOR(4.7)
----------
         4

SQL> select round(4.7) from dual;

ROUND(4.7)
----------
         5

SQL> select ceiling(4.7) from dual;
select ceiling(4.7) from dual
       *
ERROR at line 1:
ORA-00904: "CEILING": invalid identifier


SQL> select ceiling(4.7) from dual;
select ceiling(4.7) from dual
       *
ERROR at line 1:
ORA-00904: "CEILING": invalid identifier


SQL> select ceilling(4.7) from dual;
select ceilling(4.7) from dual
       *
ERROR at line 1:
ORA-00904: "CEILLING": invalid identifier


SQL> select trunc(153.322,2) from dual;

TRUNC(153.322,2)
----------------
          153.32

SQL> select mod(4,7) from dual;

  MOD(4,7)
----------
         4

SQL> select ascii('A') from dual;

ASCII('A')
----------
        65

SQL> select ascii('a') from dual;
ASCII('a')
----------
        97