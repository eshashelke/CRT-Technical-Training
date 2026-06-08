/*
------------------------------------------------------------
Day 8 - Campus Recruitment Training (CRT)
------------------------------------------------------------

Topic: SQL DDL and DML Commands

Description:
This SQL program demonstrates the creation and
manipulation of database tables using Oracle SQL.

Operations Implemented:
1. Create Table
2. Insert Records
3. Commit Transaction
4. Select Records
5. Create Table from Existing Table
6. Create Table with Selected Columns
7. Describe Table Structure
8. Rename Table
9. Alter Table (Add Column)
10. User Input using Substitution Variables
11. Insert Data from One Table to Another

Concepts Covered:
- DDL Commands
- DML Commands
- Table Creation
- Data Insertion
- Table Alteration
- Data Copying
- Oracle SQL

------------------------------------------------------------
*/






SQL> CREATE TABLE student (
  2  stuid NUMBER PRIMARY KEY,
  3  sname VARCHAR(50),
  4  scity CHAR(10),
  5  ssal NUMBER(8,2));

Table created.

SQL> INSERT INTO student (stuId, sname, scity, ssal)
  2  VALUES (1, 'Clark', 'Nagpur', 25000.00);

1 row created.

SQL>
SQL> INSERT INTO student (stuId, sname, scity, ssal)
  2  VALUES (2, 'Dave', 'Mumbai', 30000.00);

1 row created.

SQL>
SQL> INSERT INTO student (stuId, sname, scity, ssal)
  2  VALUES (3, 'Ava', 'Pune', 28000.00);

1 row created.

SQL> commit;

Commit complete.

SQL> select * student;
select * student
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> select * from student;

     STUID SNAME                                              SCITY
---------- -------------------------------------------------- ----------
      SSAL
----------
         1 Clark                                              Nagpur
     25000

         2 Dave                                               Mumbai
     30000

         3 Ava                                                Pune
     28000


SQL> create table student2 as select * from student;

Table created.

SQL> select * from student2;

     STUID SNAME                                              SCITY
---------- -------------------------------------------------- ----------
      SSAL
----------
         1 Clark                                              Nagpur
     25000

         2 Dave                                               Mumbai
     30000

         3 Ava                                                Pune
     28000


SQL> create table student3 as select stuid, sname from student;

Table created.

SQL> select * from student3;

     STUID SNAME
---------- --------------------------------------------------
         1 Clark
         2 Dave
         3 Ava

SQL> desc student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUID                                     NOT NULL NUMBER
 SNAME                                              VARCHAR2(50)
 SCITY                                              CHAR(10)
 SSAL                                               NUMBER(8,2)

SQL> desc student3;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUID                                              NUMBER
 SNAME                                              VARCHAR2(50)

SQL> alter table student3 rename to student4;

Table altered.

SQL> desc student4;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUID                                              NUMBER
 SNAME                                              VARCHAR2(50)


SQL> alter table student add (pincode CHAR(6));

Table altered.

SQL> desc student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUID                                     NOT NULL NUMBER
 SNAME                                              VARCHAR2(50)
 SCITY                                              CHAR(10)
 SSAL                                               NUMBER(8,2)
 PINCODE                                            CHAR(6)

SQL> desc student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUID                                     NOT NULL NUMBER
 SNAME                                              VARCHAR2(50)
 SCITY                                              CHAR(10)
 SSAL                                               NUMBER(8,2)
 PINCODE                                            CHAR(6)

SQL> select * from student;

     STUID SNAME                                              SCITY
---------- -------------------------------------------------- ----------
      SSAL PINCOD
---------- ------
         1 Clark                                              Nagpur
     25000

         2 Dave                                               Mumbai
     30000

         3 Ava                                                Pune
     28000


SQL> insert into student values(&stuid,'&sname','&scity','&ssal','&pincode');
Enter value for stuid: 101
Enter value for sname: Esha
Enter value for scity: Nagpur
Enter value for ssal: 100.23
Enter value for pincode: 423442
old   1: insert into student values(&stuid,'&sname','&scity','&ssal','&pincode')
new   1: insert into student values(101,'Esha','Nagpur','100.23','423442')

1 row created.

SQL> /
Enter value for stuid: 102
Enter value for sname: Disha
Enter value for scity: Pune
Enter value for ssal: 3284.32
Enter value for pincode: 237864
old   1: insert into student values(&stuid,'&sname','&scity','&ssal','&pincode')
new   1: insert into student values(102,'Disha','Pune','3284.32','237864')

1 row created.

SQL> /
Enter value for stuid: Saijal
Enter value for sname: Saijal
Enter value for scity: mumbai
Enter value for ssal: 3842.43
Enter value for pincode: 839753
old   1: insert into student values(&stuid,'&sname','&scity','&ssal','&pincode')
new   1: insert into student values(Saijal,'Saijal','mumbai','3842.43','839753')
insert into student values(Saijal,'Saijal','mumbai','3842.43','839753')
                           *
ERROR at line 1:
ORA-00984: column not allowed here


SQL> insert into student2 select * from student;
insert into student2 select * from student
            *
ERROR at line 1:
ORA-00913: too many values


SQL> desc student2;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUID                                              NUMBER
 SNAME                                              VARCHAR2(50)
 SCITY                                              CHAR(10)
 SSAL                                               NUMBER(8,2)

SQL> insert into student2 select stuid,sname,scity,ssal from student;

5 rows created.

SQL> select * from student;

     STUID SNAME                                              SCITY
---------- -------------------------------------------------- ----------
      SSAL PINCOD
---------- ------
         1 Clark                                              Nagpur
     25000

         2 Dave                                               Mumbai
     30000

         3 Ava                                                Pune
     28000


     STUID SNAME                                              SCITY
---------- -------------------------------------------------- ----------
      SSAL PINCOD
---------- ------
       101 Esha                                               Nagpur
    100.23 423442

       102 Disha                                              Pune
   3284.32 237864

