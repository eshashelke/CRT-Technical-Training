/*
------------------------------------------------------------
Day 9 - Campus Recruitment Training (CRT)
------------------------------------------------------------

Topic: SQL DML, TCL and DCL Commands

Description:
This practical demonstrates data modification,
transaction control, and user privilege management
using Oracle SQL.

Operations Implemented:
1. Modify Column Data Type
2. Update Records
3. Rollback Transaction
4. Commit Transaction
5. Update Multiple Records
6. Delete Records
7. Insert New Records
8. Grant Privileges
9. Revoke Privileges
10. Create User
11. Drop User

Concepts Covered:
- DML Commands
- TCL Commands
- DCL Commands
- Transaction Management
- User Management
- Privilege Management

------------------------------------------------------------
*/





SQL> alter table student modify(sname VARCHAR(10));

Table altered.

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
         1 Clark      Nagpur          25000
         2 Dave       Mumbai          30000
         3 Ava        Pune            28000
       101 Esha       Nagpur         100.23 423442
       102 Disha      Pune          3284.32 237864

SQL> update student set sname='Saijal' where stuid=3;

1 row updated.

SQL> update student set ssal=0 where scity='Pune';

2 rows updated.

SQL> select * from student;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
         1 Clark      Nagpur          25000
         2 Dave       Mumbai          30000
         3 Saijal     Pune                0
       101 Esha       Nagpur         100.23 423442
       102 Disha      Pune                0 237864

SQL> update student set sname='mohan' where scity='Pune';

2 rows updated.

SQL> select * from student;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
         1 Clark      Nagpur          25000
         2 Dave       Mumbai          30000
         3 mohan      Pune                0
       101 Esha       Nagpur         100.23 423442
       102 mohan      Pune                0 237864

SQL> rollback;

Rollback complete.

SQL> select * from student;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
         1 Clark      Nagpur          25000
         2 Dave       Mumbai          30000
         3 Ava        Pune            28000
       101 Esha       Nagpur         100.23 423442
       102 Disha      Pune          3284.32 237864

SQL> update student set pincode=442211 where pincode=null;

0 rows updated.

SQL> update student set pincode=442211 where pincode=0;

0 rows updated.

SQL> update student set pincode=442211 where pincode='';

0 rows updated.

SQL> update student set pincode=442211 where stuid=1,2,3;
update student set pincode=442211 where stuid=1,2,3
                                               *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> update student set pincode=442211 where stuid=(1,2,3);
update student set pincode=442211 where stuid=(1,2,3)
                                             *
ERROR at line 1:
ORA-01797: this operator must be followed by ANY or ALL


SQL> update student set pincode=442211 where stuid=ALL(1,2,3);

0 rows updated.

SQL> update student set pincode=442211 where stuid {ALL(1,2,3)};
update student set pincode=442211 where stuid {ALL(1,2,3)}
                                              *
ERROR at line 1:
ORA-00911: invalid character


SQL> UPDATE student
  2  SET pincode = 442211
  3  WHERE stuid IN (1, 2, 3);

3 rows updated.

SQL> commit;

Commit complete.

SQL> update student set scity='Nagpur';

5 rows updated.

SQL> select * from student;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
         1 Clark      Nagpur          25000 442211
         2 Dave       Nagpur          30000 442211
         3 Ava        Nagpur          28000 442211
       101 Esha       Nagpur         100.23 423442
       102 Disha      Nagpur        3284.32 237864

SQL> rollback;

Rollback complete.

SQL> select * from student;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
         1 Clark      Nagpur          25000 442211
         2 Dave       Mumbai          30000 442211
         3 Ava        Pune            28000 442211
       101 Esha       Nagpur         100.23 423442
       102 Disha      Pune          3284.32 237864

SQL> delete from student where stuid=1;

1 row deleted.

SQL> delete from student where stuid in (2,3);

2 rows deleted.

SQL> select * from student;

     STUID SNAME      SCITY            SSAL PINCOD
---------- ---------- ---------- ---------- ------
       101 Esha       Nagpur         100.23 423442
       102 Disha      Pune          3284.32 237864

SQL> commit;

Commit complete.

SQL> insert into student values(&stuid,'&sname','&scity','&ssal','&pincode');
Enter value for stuid: 103
Enter value for sname: Saijal
Enter value for scity: Mumbai
Enter value for ssal: 234.34
Enter value for pincode: 324223
old   1: insert into student values(&stuid,'&sname','&scity','&ssal','&pincode')
new   1: insert into student values(103,'Saijal','Mumbai','234.34','324223')

1 row created.

SQL> /
Enter value for stuid: 104
Enter value for sname: Pallavi
Enter value for scity: Pune
Enter value for ssal: 24345.23
Enter value for pincode: 444444
old   1: insert into student values(&stuid,'&sname','&scity','&ssal','&pincode')
new   1: insert into student values(104,'Pallavi','Pune','24345.23','444444')

1 row created.

SQL> grant select,update on table_name to some_user, another_user
  2  revoke select , update on table_name to user1,user2
  3
SQL> create user sqladmin ientified by oracle;
create user sqladmin ientified by oracle
                     *
ERROR at line 1:
ORA-00922: missing or invalid option


SQL> create user sqladmin identified by oracle;

User created.

SQL> grant connect to sqladmin;

Grant succeeded.

SQL> grant connect,resource, dba to sqladmin;

Grant succeeded.

SQL> grant unlimited tablespace to sqladmin;

Grant succeeded.

SQL> grant select,update,delete,insert on student to sqladmin;

Grant succeeded.

SQL> drop user sqladmin;

User dropped.

SQL> create user sqladmin identified by oracle;

User created.

SQL> grant connect to sqladmin;

Grant succeeded.

SQL> grant create table to sqladmin;

Grant succeeded.

SQL> revoke create table from sqladmin;

Revoke succeeded.

SQL>