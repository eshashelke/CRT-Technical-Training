SQL> select * from emp;

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         1 Rahul           Pune            45000        10-JAN-20
         2 Priya           Mumbai        52000.5        15-MAR-21
         3 Amit            Delhi        48000.75        20-JUN-19
         4 kunal           pune            30000 411001 05-AUG-22
         5 vanshika        mumbai          25000 441110 12-FEB-23
         6 manushree       ecity           10000 441110 18-SEP-24
         7 ashwini         hyderabad       15000 445206 01-JAN-25

7 rows selected.

SQL> select * from emp where empname between 'A' and 'S';

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         1 Rahul           Pune            45000        10-JAN-20
         2 Priya           Mumbai        52000.5        15-MAR-21
         3 Amit            Delhi        48000.75        20-JUN-19

SQL> select * from emp where empname not between 'A' and 'S';

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         4 kunal           pune            30000 411001 05-AUG-22
         5 vanshika        mumbai          25000 441110 12-FEB-23
         6 manushree       ecity           10000 441110 18-SEP-24
         7 ashwini         hyderabad       15000 445206 01-JAN-25

SQL> select * from emp where empname between 'Abby' and 'Sam';

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         1 Rahul           Pune            45000        10-JAN-20
         2 Priya           Mumbai        52000.5        15-MAR-21
         3 Amit            Delhi        48000.75        20-JUN-19

SQL> select * from emp where empname not between 'Abby' and 'Sam' order byempname;;
select * from emp where empname not between 'Abby' and 'Sam' order byempname;
                                                                   *
ERROR at line 1:
ORA-00924: missing BY keyword


SQL> select * from emp where empname not between 'Abby' and 'Sam' order by empname;

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         7 ashwini         hyderabad       15000 445206 01-JAN-25
         4 kunal           pune            30000 411001 05-AUG-22
         6 manushree       ecity           10000 441110 18-SEP-24
         5 vanshika        mumbai          25000 441110 12-FEB-23

SQL> select * from emp where empname between 'Abby' and 'Sam' order by empname;

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         3 Amit            Delhi        48000.75        20-JUN-19
         2 Priya           Mumbai        52000.5        15-MAR-21
         1 Rahul           Pune            45000        10-JAN-20

SQL> select * from emp where empjoin between '02-dec-2017' and '09-august-2020';

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         1 Rahul           Pune            45000        10-JAN-20
         3 Amit            Delhi        48000.75        20-JUN-19

SQL> select * from emp where empcity in ('hyderabad','Pune');

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         1 Rahul           Pune            45000        10-JAN-20
         7 ashwini         hyderabad       15000 445206 01-JAN-25

SQL> select * from emp where empcity not in ('hyderabad','Pune');

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         2 Priya           Mumbai        52000.5        15-MAR-21
         3 Amit            Delhi        48000.75        20-JUN-19
         4 kunal           pune            30000 411001 05-AUG-22
         5 vanshika        mumbai          25000 441110 12-FEB-23
         6 manushree       ecity           10000 441110 18-SEP-24

SQL> select * from emp where empid in (select empid from department where empcity='Nagpur');

no rows selected

SQL> select * from emp where empid in (select empid from department where empcity='Mumbai');

no rows selected

SQL> select * from emp where empname like 'J%';

no rows selected

SQL> select * from emp where empname like 'v%';

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         5 vanshika        mumbai          25000 441110 12-FEB-23

SQL> select * from emp where empname like '%v%';

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         5 vanshika        mumbai          25000 441110 12-FEB-23

SQL> select * from emp where empname like '_a%';

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         1 Rahul           Pune            45000        10-JAN-20
         5 vanshika        mumbai          25000 441110 12-FEB-23
         6 manushree       ecity           10000 441110 18-SEP-24

SQL> select * from emp where empcity is null;

no rows selected

SQL> select * from emp where empcity is not null;

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         1 Rahul           Pune            45000        10-JAN-20
         2 Priya           Mumbai        52000.5        15-MAR-21
         3 Amit            Delhi        48000.75        20-JUN-19
         4 kunal           pune            30000 411001 05-AUG-22
         5 vanshika        mumbai          25000 441110 12-FEB-23
         6 manushree       ecity           10000 441110 18-SEP-24
         7 ashwini         hyderabad       15000 445206 01-JAN-25

7 rows selected.

SQL> select empid,empname from emp where empcity is not null;

     EMPID EMPNAME
---------- ---------------
         1 Rahul
         2 Priya
         3 Amit
         4 kunal
         5 vanshika
         6 manushree
         7 ashwini

7 rows selected.

SQL> select * from emp order by empname;

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         3 Amit            Delhi        48000.75        20-JUN-19
         2 Priya           Mumbai        52000.5        15-MAR-21
         1 Rahul           Pune            45000        10-JAN-20
         7 ashwini         hyderabad       15000 445206 01-JAN-25
         4 kunal           pune            30000 411001 05-AUG-22
         6 manushree       ecity           10000 441110 18-SEP-24
         5 vanshika        mumbai          25000 441110 12-FEB-23

7 rows selected.

SQL> select * from emp order by empname desc;

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         5 vanshika        mumbai          25000 441110 12-FEB-23
         6 manushree       ecity           10000 441110 18-SEP-24
         4 kunal           pune            30000 411001 05-AUG-22
         7 ashwini         hyderabad       15000 445206 01-JAN-25
         1 Rahul           Pune            45000        10-JAN-20
         2 Priya           Mumbai        52000.5        15-MAR-21
         3 Amit            Delhi        48000.75        20-JUN-19

7 rows selected.

SQL> select * from emp order by empsal desc;

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         2 Priya           Mumbai        52000.5        15-MAR-21
         3 Amit            Delhi        48000.75        20-JUN-19
         1 Rahul           Pune            45000        10-JAN-20
         4 kunal           pune            30000 411001 05-AUG-22
         5 vanshika        mumbai          25000 441110 12-FEB-23
         7 ashwini         hyderabad       15000 445206 01-JAN-25
         6 manushree       ecity           10000 441110 18-SEP-24

7 rows selected.

SQL> select * from emp order by empsal,empname;

     EMPID EMPNAME         EMPCITY        EMPSAL PINCOD EMPJOIN
---------- --------------- ---------- ---------- ------ ---------
         6 manushree       ecity           10000 441110 18-SEP-24
         7 ashwini         hyderabad       15000 445206 01-JAN-25
         5 vanshika        mumbai          25000 441110 12-FEB-23
         4 kunal           pune            30000 411001 05-AUG-22
         1 Rahul           Pune            45000        10-JAN-20
         3 Amit            Delhi        48000.75        20-JUN-19
         2 Priya           Mumbai        52000.5        15-MAR-21

7 rows selected.

SQL> select count(empid),empcity from emp group by empcity;

COUNT(EMPID) EMPCITY
------------ ----------
           1 Pune
           1 Delhi
           1 ecity
           1 Mumbai
           1 pune
           1 mumbai
           1 hyderabad

7 rows selected.

SQL> select count(empid),empcity from emp group by empcity order by count(empid);

COUNT(EMPID) EMPCITY
------------ ----------
           1 Pune
           1 Delhi
           1 ecity
           1 hyderabad
           1 pune
           1 mumbai
           1 Mumbai

7 rows selected.

SQL> select emp.empname,count(department.deptid) from department;
select emp.empname,count(department.deptid) from department
       *
ERROR at line 1:
ORA-00904: "EMP"."EMPNAME": invalid identifier


SQL> desc department;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPTID                                    NOT NULL NUMBER(3)
 DEPTNAME                                           VARCHAR2(20)
 EMPID                                              NUMBER(3)
 DEPTCITY                                           VARCHAR2(20)

SQL> desc emp;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPID                                     NOT NULL NUMBER(3)
 EMPNAME                                            VARCHAR2(15)
 EMPCITY                                            CHAR(10)
 EMPSAL                                             NUMBER(8,2)
 PINCODE                                            CHAR(6)
 EMPJOIN                                            DATE

SQL> select emp.empname,count(department.deptid) from department left join emp on department.empid=emp.empid group by emp.empname;

no rows selected

SQL> select count(empid),empcity from emp group by empcity having count(empid)<2;

COUNT(EMPID) EMPCITY
------------ ----------
           1 Pune
           1 Delhi
           1 ecity
           1 Mumbai
           1 pune
           1 mumbai
           1 hyderabad

7 rows selected.

SQL> select count(empid),empcity from emp group by empcity having count(empid)>2;

no rows selected

SQL>