-- SQL script for creating and managing an e-commerce database
SQL> CREATE TABLE customer (
  2      cust_id     VARCHAR2(5) PRIMARY KEY,
  3      f_name      VARCHAR2(50),
  4      l_name      VARCHAR2(50),
  5      area        VARCHAR2(10),
  6      phone_no    VARCHAR2(10)
  7  );

Table created.

SQL> CREATE TABLE category (
  2      category_id    VARCHAR2(5) PRIMARY KEY,
  3      category_name  VARCHAR2(30)
  4  );

Table created.


SQL> CREATE TABLE orders (     
order_id VARCHAR(5) PRIMARY KEY,     
cust_id VARCHAR(5),    
order_date DATE,     
total_amount DECIMAL(10,2),    
 FOREIGN KEY (cust_id) REFERENCES customer(cust_id) );

Table created.


SQL> CREATE TABLE invoice (     inv_no VARCHAR(5) PRIMARY KEY,     order_id VARCHAR(5),     inv_date DATE,     amount DECIMAL(10,2),     FOREIGN KEY (order_id) REFERENCES orders(order_id) );

Table created.

SQL> CREATE TABLE payment ( payment_id VARCHAR(5) PRIMARY KEY, inv_no VARCHAR(5), payment_date DATE, payment_mode VARCHAR(20), payment_status VARCHAR(15), FOREIGN KEY (inv_no) REFERENCES invoice(inv_no) );

Table created.

SQL> desc orders
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ORDER_ID                                  NOT NULL VARCHAR2(5)
 CUST_ID                                            VARCHAR2(5)
 ORDER_DATE                                         DATE
 TOTAL_AMOUNT                                       NUMBER(10,2)

SQL> DESC orders;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ORDER_ID                                  NOT NULL VARCHAR2(5)
 CUST_ID                                            VARCHAR2(5)
 ORDER_DATE                                         DATE
 TOTAL_AMOUNT                                       NUMBER(10,2)

SQL> DESC product;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PRODUCT_ID                                NOT NULL VARCHAR2(5)
 PRODUCT_NAME                                       VARCHAR2(50)
 CATEGORY_ID                                        VARCHAR2(5)
 PRICE                                              NUMBER(8,2)
 STOCK                                              NUMBER(5)

SQL> CREATE TABLE order_items (
  2      order_item_id NUMBER(5) PRIMARY KEY,
  3      order_id      VARCHAR2(5),
  4      product_id    VARCHAR2(5),
  5      quantity      NUMBER(5),
  6      price         NUMBER(8,2)
  7  );

Table created.

SQL> ALTER TABLE order_items
  2  ADD CONSTRAINT fk_oi_order
  3  FOREIGN KEY (order_id)
  4  REFERENCES orders(order_id);

Table altered.

SQL> ALTER TABLE order_items
  2  ADD CONSTRAINT fk_oi_product
  3  FOREIGN KEY (product_id)
  4  REFERENCES product(product_id);

Table altered.

SQL> SELECT table_name
  2  FROM user_tables
  3  WHERE table_name = 'ORDER_ITEMS';

TABLE_NAME
------------------------------
ORDER_ITEMS


--Inserting data into tables

SQL> INSERT INTO customer VALUES ('C01','Rajesh','Kumar','DA','9876543210');

1 row created.

SQL> INSERT INTO customer VALUES ('C02','Priya','Sharma','MU','9876543211');

1 row created.

SQL> INSERT INTO customer VALUES ('C03','Pooja','Patel','GH','9876543212');

1 row created.

SQL> INSERT INTO customer VALUES ('C04','Amit','Verma','DA','9876543213');

1 row created.

SQL> INSERT INTO customer VALUES ('C05','Neha','Singh','JK','9876543214');

1 row created.

SQL> INSERT INTO customer VALUES ('C06','Prakash','Mehta','MU','9876543215');

1 row created.

SQL> INSERT INTO customer VALUES ('C07','Anjali','Gupta','GH','9876543216');

1 row created.

SQL> INSERT INTO customer VALUES ('C08','Rohit','Jain','KA','9876543217');

1 row created.

SQL> INSERT INTO customer VALUES ('C09','Pankaj','Das','DA','9876543218');

1 row created.

SQL> INSERT INTO customer VALUES ('C10','Sneha','Nair','MU','9876543219');

1 row created.

SQL>
SQL> COMMIT;

Commit complete.

SQL> INSERT INTO category VALUES ('CT01','Electronics');

1 row created.

SQL> INSERT INTO category VALUES ('CT02','Clothing');

1 row created.

SQL> INSERT INTO category VALUES ('CT03','Books');

1 row created.

SQL> INSERT INTO category VALUES ('CT04','Home');

1 row created.

SQL> INSERT INTO category VALUES ('CT05','Beauty');

1 row created.

SQL> INSERT INTO category VALUES ('CT06','Sports');

1 row created.

SQL> INSERT INTO category VALUES ('CT07','Toys');

1 row created.

SQL> INSERT INTO category VALUES ('CT08','Grocery');

1 row created.

SQL> INSERT INTO category VALUES ('CT09','Footwear');

1 row created.

SQL> INSERT INTO category VALUES ('CT10','Accessories');

1 row created.

SQL>
SQL> COMMIT;

Commit complete.

SQL> INSERT INTO product VALUES ('PR01','Laptop','CT01',50000,20);

1 row created.

SQL> INSERT INTO product VALUES ('PR02','T-Shirt','CT02',500,100);

1 row created.

SQL> INSERT INTO product VALUES ('PR03','Novel','CT03',250,50);

1 row created.

SQL> INSERT INTO product VALUES ('PR04','Mixer','CT04',3500,25);

1 row created.

SQL> INSERT INTO product VALUES ('PR05','Lipstick','CT05',450,60);

1 row created.

SQL> INSERT INTO product VALUES ('PR06','Football','CT06',800,40);

1 row created.

SQL> INSERT INTO product VALUES ('PR07','Toy Car','CT07',350,30);

1 row created.

SQL> INSERT INTO product VALUES ('PR08','Rice Bag','CT08',1200,70);

1 row created.

SQL> INSERT INTO product VALUES ('PR09','Sneakers','CT09',2500,45);

1 row created.

SQL> INSERT INTO product VALUES ('PR10','Watch','CT10',1800,35);

1 row created.

SQL>
SQL> COMMIT;

Commit complete.

SQL>
SQL> INSERT INTO orders VALUES ('O01','C01',TO_DATE('10-07-2023','DD-MM-YYYY'),50000);

1 row created.

SQL> INSERT INTO orders VALUES ('O02','C02',TO_DATE('15-07-2023','DD-MM-YYYY'),750);

1 row created.

SQL> INSERT INTO orders VALUES ('O03','C03',TO_DATE('01-08-2023','DD-MM-YYYY'),3750);

1 row created.

SQL> INSERT INTO orders VALUES ('O04','C04',TO_DATE('05-08-2023','DD-MM-YYYY'),450);

1 row created.

SQL> INSERT INTO orders VALUES ('O05','C05',TO_DATE('10-08-2023','DD-MM-YYYY'),2500);

1 row created.

SQL> INSERT INTO orders VALUES ('O06','C06',TO_DATE('12-08-2023','DD-MM-YYYY'),800);

1 row created.

SQL> INSERT INTO orders VALUES ('O07','C07',TO_DATE('14-08-2023','DD-MM-YYYY'),1200);

1 row created.

SQL> INSERT INTO orders VALUES ('O08','C08',TO_DATE('16-08-2023','DD-MM-YYYY'),1800);

1 row created.

SQL> INSERT INTO orders VALUES ('O09','C02',TO_DATE('18-08-2023','DD-MM-YYYY'),350);

1 row created.

SQL> INSERT INTO orders VALUES ('O10','C10',TO_DATE('20-08-2023','DD-MM-YYYY'),3000);

1 row created.

SQL>
SQL> COMMIT;

Commit complete.

SQL> CREATE SEQUENCE order_item_seq
  2  START WITH 1
  3  INCREMENT BY 1;

Sequence created.

SQL> INSERT INTO order_items VALUES (order_item_seq.NEXTVAL,'O01','PR01',1,50000);

1 row created.

SQL> INSERT INTO order_items VALUES (order_item_seq.NEXTVAL,'O02','PR02',1,500);

1 row created.

SQL> INSERT INTO order_items VALUES (order_item_seq.NEXTVAL,'O02','PR03',1,250);

1 row created.

SQL> INSERT INTO order_items VALUES (order_item_seq.NEXTVAL,'O03','PR04',1,3500);

1 row created.

SQL> INSERT INTO order_items VALUES (order_item_seq.NEXTVAL,'O03','PR05',1,450);

1 row created.

SQL> INSERT INTO order_items VALUES (order_item_seq.NEXTVAL,'O04','PR05',1,450);

1 row created.

SQL> INSERT INTO order_items VALUES (order_item_seq.NEXTVAL,'O05','PR09',1,2500);

1 row created.

SQL> INSERT INTO order_items VALUES (order_item_seq.NEXTVAL,'O06','PR06',1,800);

1 row created.

SQL> INSERT INTO order_items VALUES (order_item_seq.NEXTVAL,'O07','PR08',1,1200);

1 row created.

SQL> INSERT INTO order_items VALUES (order_item_seq.NEXTVAL,'O08','PR10',1,1800);

1 row created.

SQL>
SQL> COMMIT;

Commit complete.

SQL> INSERT INTO invoice VALUES ('I01','O01',TO_DATE('10-07-2023','DD-MM-YYYY'),50000);

1 row created.

SQL> INSERT INTO invoice VALUES ('I02','O02',TO_DATE('15-07-2023','DD-MM-YYYY'),750);

1 row created.

SQL> INSERT INTO invoice VALUES ('I03','O03',TO_DATE('01-08-2023','DD-MM-YYYY'),3950);

1 row created.

SQL> INSERT INTO invoice VALUES ('I04','O04',TO_DATE('05-08-2023','DD-MM-YYYY'),450);

1 row created.

SQL> INSERT INTO invoice VALUES ('I05','O05',TO_DATE('10-08-2023','DD-MM-YYYY'),2500);

1 row created.

SQL> INSERT INTO invoice VALUES ('I06','O06',TO_DATE('12-08-2023','DD-MM-YYYY'),800);

1 row created.

SQL> INSERT INTO invoice VALUES ('I07','O07',TO_DATE('14-08-2023','DD-MM-YYYY'),1200);

1 row created.

SQL> INSERT INTO invoice VALUES ('I08','O08',TO_DATE('16-08-2023','DD-MM-YYYY'),1800);

1 row created.

SQL> INSERT INTO invoice VALUES ('I09','O09',TO_DATE('18-08-2023','DD-MM-YYYY'),350);

1 row created.

SQL> INSERT INTO invoice VALUES ('I10','O10',TO_DATE('20-08-2023','DD-MM-YYYY'),3000);

1 row created.

SQL>
SQL> COMMIT;

Commit complete.

SQL> INSERT INTO payment VALUES ('P01','I01',TO_DATE('10-07-2023','DD-MM-YYYY'),'Card','SUCCESS');

1 row created.

SQL> INSERT INTO payment VALUES ('P02','I02',TO_DATE('15-07-2023','DD-MM-YYYY'),'UPI','SUCCESS');

1 row created.

SQL> INSERT INTO payment VALUES ('P03','I03',TO_DATE('01-08-2023','DD-MM-YYYY'),'Card','FAILED');

1 row created.

SQL> INSERT INTO payment VALUES ('P04','I04',TO_DATE('05-08-2023','DD-MM-YYYY'),'UPI','SUCCESS');

1 row created.

SQL> INSERT INTO payment VALUES ('P05','I05',TO_DATE('10-08-2023','DD-MM-YYYY'),'Net Banking','SUCCESS');

1 row created.

SQL> INSERT INTO payment VALUES ('P06','I06',TO_DATE('12-08-2023','DD-MM-YYYY'),'Card','SUCCESS');

1 row created.

SQL> INSERT INTO payment VALUES ('P07','I07',TO_DATE('14-08-2023','DD-MM-YYYY'),'UPI','FAILED');

1 row created.

SQL> INSERT INTO payment VALUES ('P08','I08',TO_DATE('16-08-2023','DD-MM-YYYY'),'Card','SUCCESS');

1 row created.

SQL> INSERT INTO payment VALUES ('P09','I09',TO_DATE('18-08-2023','DD-MM-YYYY'),'UPI','SUCCESS');

1 row created.

SQL> INSERT INTO payment VALUES ('P10','I10',TO_DATE('20-08-2023','DD-MM-YYYY'),'Card','SUCCESS');

1 row created.

SQL>
SQL> COMMIT;

Commit complete.






--questions

SQL> connect system/oracle
Connected.
SQL> select * from customer;

CUST_ F_NAME
----- --------------------------------------------------
L_NAME                                             AREA       PHONE_NO
-------------------------------------------------- ---------- ----------
C01   Rajesh
Kumar                                              DA         9876543210

C02   Priya
Sharma                                             MU         9876543211

C03   Pooja
Patel                                              GH         9876543212


CUST_ F_NAME
----- --------------------------------------------------
L_NAME                                             AREA       PHONE_NO
-------------------------------------------------- ---------- ----------
C04   Amit
Verma                                              DA         9876543213

C05   Neha
Singh                                              JK         9876543214

C06   Prakash
Mehta                                              MU         9876543215


CUST_ F_NAME
----- --------------------------------------------------
L_NAME                                             AREA       PHONE_NO
-------------------------------------------------- ---------- ----------
C07   Anjali
Gupta                                              GH         9876543216

C08   Rohit
Jain                                               KA         9876543217

C09   Pankaj
Das                                                DA         9876543218


CUST_ F_NAME
----- --------------------------------------------------
L_NAME                                             AREA       PHONE_NO
-------------------------------------------------- ---------- ----------
C10   Sneha
Nair                                               MU         9876543219


10 rows selected.

SQL> alter table customer modify (l_name varchar(12));

Table altered.

SQL> alter table customer modify (f_name varchar(12));

Table altered.

SQL> select f_name, area from customer where cust_id='C03';

F_NAME       AREA
------------ ----------
Pooja        GH

SQL> select l_name, phone_no from customer;

L_NAME       PHONE_NO
------------ ----------
Kumar        9876543210
Sharma       9876543211
Patel        9876543212
Verma        9876543213
Singh        9876543214
Mehta        9876543215
Gupta        9876543216
Jain         9876543217
Das          9876543218
Nair         9876543219

10 rows selected.

SQL> select count(cust_id) from customer;

COUNT(CUST_ID)
--------------
            10

SQL> select * from customer where area in ('DA', 'MU', 'GH');

CUST_ F_NAME       L_NAME       AREA       PHONE_NO
----- ------------ ------------ ---------- ----------
C01   Rajesh       Kumar        DA         9876543210
C02   Priya        Sharma       MU         9876543211
C03   Pooja        Patel        GH         9876543212
C04   Amit         Verma        DA         9876543213
C06   Prakash      Mehta        MU         9876543215
C07   Anjali       Gupta        GH         9876543216
C09   Pankaj       Das          DA         9876543218
C10   Sneha        Nair         MU         9876543219

8 rows selected.



SQL> update customer set area='JK' where cust_id='C01';

1 row updated.


SQL> select f_name,l_name from customer where f_name like 'P*';

no rows selected

SQL> select f_name,l_name from customer where f_name like 'P%';

F_NAME       L_NAME
------------ ------------
Priya        Sharma
Pooja        Patel
Prakash      Mehta
Pankaj       Das


SQL> select f_name,l_name from customer where area like '_A';

F_NAME       L_NAME
------------ ------------
Amit         Verma
Rohit        Jain
Pankaj       Das

SQL> update customer set phone_no = 567889 where f_name='Rajesh';

1 row updated.

SQL> delete from customer where cust_id='C09';

1 row deleted.

SQL> select * from customer;

CUST_ F_NAME       L_NAME       AREA       PHONE_NO
----- ------------ ------------ ---------- ----------
C01   Rajesh       Kumar        JK         567889
C02   Priya        Sharma       MU         9876543211
C03   Pooja        Patel        GH         9876543212
C04   Amit         Verma        DA         9876543213
C05   Neha         Singh        JK         9876543214
C06   Prakash      Mehta        MU         9876543215
C07   Anjali       Gupta        GH         9876543216
C08   Rohit        Jain         KA         9876543217
C10   Sneha        Nair         MU         9876543219

9 rows selected.





SQL> select * from category;

CATEG CATEGORY_NAME
----- ------------------------------
CT01  Electronics
CT02  Clothing
CT03  Books
CT04  Home
CT05  Beauty
CT06  Sports
CT07  Toys
CT08  Grocery
CT09  Footwear
CT10  Accessories

10 rows selected.

SQL> select * from product;

PRODU PRODUCT_NAME                                       CATEG      PRICE
----- -------------------------------------------------- ----- ----------
     STOCK
----------
PR01  Laptop                                             CT01       50000
        20

PR02  T-Shirt                                            CT02         500
       100

PR03  Novel                                              CT03         250
        50


PRODU PRODUCT_NAME                                       CATEG      PRICE
----- -------------------------------------------------- ----- ----------
     STOCK
----------
PR04  Mixer                                              CT04        3500
        25

PR05  Lipstick                                           CT05         450
        60

PR06  Football                                           CT06         800
        40


PRODU PRODUCT_NAME                                       CATEG      PRICE
----- -------------------------------------------------- ----- ----------
     STOCK
----------
PR07  Toy Car                                            CT07         350
        30

PR08  Rice Bag                                           CT08        1200
        70

PR09  Sneakers                                           CT09        2500
        45


PRODU PRODUCT_NAME                                       CATEG      PRICE
----- -------------------------------------------------- ----- ----------
     STOCK
----------
PR10  Watch                                              CT10        1800
        35


10 rows selected.

SQL> alter table product modify(product_name varchar(12));

Table altered.

SQL> select * from product;

PRODU PRODUCT_NAME CATEG      PRICE      STOCK
----- ------------ ----- ---------- ----------
PR01  Laptop       CT01       50000         20
PR02  T-Shirt      CT02         500        100
PR03  Novel        CT03         250         50
PR04  Mixer        CT04        3500         25
PR05  Lipstick     CT05         450         60
PR06  Football     CT06         800         40
PR07  Toy Car      CT07         350         30
PR08  Rice Bag     CT08        1200         70
PR09  Sneakers     CT09        2500         45
PR10  Watch        CT10        1800         35

10 rows selected.

SQL> select product_name from product where price>150;

PRODUCT_NAME
------------
Laptop
T-Shirt
Novel
Mixer
Lipstick
Football
Toy Car
Rice Bag
Sneakers
Watch

10 rows selected.


SQL> select product_name from product where price between 100 and 180;

no rows selected

SQL> select product_name,price from product;

PRODUCT_NAME      PRICE
------------ ----------
Laptop            50000
T-Shirt             500
Novel               250
Mixer              3500
Lipstick            450
Football            800
Toy Car             350
Rice Bag           1200
Sneakers           2500
Watch              1800

10 rows selected.


SQL> select count(distinct category_id) from product;

COUNT(DISTINCTCATEGORY_ID)
--------------------------
                        10

SQL> select category_id, count(*) as total_products from product group by category_id;

CATEG TOTAL_PRODUCTS
----- --------------
CT09               1
CT10               1
CT03               1
CT04               1
CT01               1
CT07               1
CT02               1
CT05               1
CT06               1
CT08               1

10 rows selected.


SQL> select c.category_id,count(*) as total_products from category c join product p on c.category_id=p.category_id group by c.category_id;

CATEG TOTAL_PRODUCTS
----- --------------
CT09               1
CT10               1
CT03               1
CT04               1
CT01               1
CT07               1
CT02               1
CT05               1
CT06               1
CT08               1

10 rows selected.


SQL> select max(price) as max_price, min(price) as min_price from product;

 MAX_PRICE  MIN_PRICE
---------- ----------
     50000        250

SQL> select avg(price) as avg_price from product;

 AVG_PRICE
----------
      6135

SQL> select p.product_name from category c join product p on c.category_id=p.category_id where c.category_name in ('Electronics', 'Clothing');

PRODUCT_NAME
------------
Laptop
T-Shirt

SQL> update product set price=55000 where product_name='Laptop';

1 row updated.

SQL> select product_name from product asc;
select product_name from product asc
                                 *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select product_name from product order by product_name asc;

PRODUCT_NAME
------------
Football
Laptop
Lipstick
Mixer
Novel
Rice Bag
Sneakers
T-Shirt
Toy Car
Watch

10 rows selected.









SQL> select o.order_id,p.product_name, oi.quantity, oi.price, o.order_date
  2  from orders o join order_items oi on o.order_id = oi.order_id
  3  join product p on p.product_id = oi.product_id
  4  where o.cust_id='C02';

ORDER PRODUCT_NAME   QUANTITY      PRICE ORDER_DAT
----- ------------ ---------- ---------- ---------
O02   T-Shirt               1        500 15-JUL-23
O02   Novel                 1        250 15-JUL-23

SQL> select count(*) from orders;

  COUNT(*)
----------
        10


SQL> select o.order_id,p.product_name, o.order_date
  2  from orders o join order_items oi on o.order_id = oi.order_id
  3  join product p on p.product_id = oi.product_id
  4  where o.order_date < to_date('01-08-2023','DD-MM-YYYY');

ORDER PRODUCT_NAME ORDER_DAT
----- ------------ ---------
O01   Laptop       10-JUL-23
O02   T-Shirt      15-JUL-23
O02   Novel        15-JUL-23

SQL> select o.order_id, o.cust_id, oi.product_id, p.product_name, o.order_date
  2  from orders o join order_items oi on o.order_id=oi.order_id
  3  join product p on p.product_id=oi.product_id;

ORDER CUST_ PRODU PRODUCT_NAME ORDER_DAT
----- ----- ----- ------------ ---------
O01   C01   PR01  Laptop       10-JUL-23
O02   C02   PR02  T-Shirt      15-JUL-23
O02   C02   PR03  Novel        15-JUL-23
O03   C03   PR04  Mixer        01-AUG-23
O04   C04   PR05  Lipstick     05-AUG-23
O03   C03   PR05  Lipstick     01-AUG-23
O06   C06   PR06  Football     12-AUG-23
O07   C07   PR08  Rice Bag     14-AUG-23
O05   C05   PR09  Sneakers     10-AUG-23
O08   C08   PR10  Watch        16-AUG-23

10 rows selected.

SQL> update orders set total_amount=12000 where order_id='O05';

1 row updated.







SQL> select * from order_items;

ORDER_ITEM_ID ORDER PRODU   QUANTITY      PRICE
------------- ----- ----- ---------- ----------
            1 O01   PR01           1      50000
            2 O02   PR02           1        500
            3 O02   PR03           1        250
            4 O03   PR04           1       3500
            5 O03   PR05           1        450
            6 O04   PR05           1        450
            7 O05   PR09           1       2500
            8 O06   PR06           1        800
            9 O07   PR08           1       1200
           10 O08   PR10           1       1800

10 rows selected.

SQL> select product_id, sum(quantity) as total_quantity from order_items group by product_id;

PRODU TOTAL_QUANTITY
----- --------------
PR04               1
PR08               1
PR02               1
PR10               1
PR03               1
PR06               1
PR01               1
PR05               2
PR09               1

9 rows selected.


SQL> SELECT p.product_name,
  2         SUM(oi.quantity) AS total_quantity
  3  FROM product p
  4  JOIN order_items oi
  5       ON p.product_id = oi.product_id
  6  GROUP BY p.product_name
  7  HAVING SUM(oi.quantity) > 3;

no rows selected


SQL> select order_id, sum(quantity * price) as total_price from order_items group by order_id;

ORDER TOTAL_PRICE
----- -----------
O05          2500
O07          1200
O06           800
O08          1800
O04           450
O03          3950
O01         50000
O02           750

8 rows selected.

SQL> select product_id, product_name from product
  2  where product_id NOT in
  3  (select product_id from order_items);

PRODU PRODUCT_NAME
----- ------------
PR07  Toy Car







SQL> select * from invoice;

INV_N ORDER INV_DATE      AMOUNT
----- ----- --------- ----------
I01   O01   10-JUL-23      50000
I02   O02   15-JUL-23        750
I03   O03   01-AUG-23       3950
I04   O04   05-AUG-23        450
I05   O05   10-AUG-23       2500
I06   O06   12-AUG-23        800
I07   O07   14-AUG-23       1200
I08   O08   16-AUG-23       1800
I09   O09   18-AUG-23        350
I10   O10   20-AUG-23       3000

10 rows selected.

SQL> select * from invoice where order_id='O03'
  2  ;

INV_N ORDER INV_DATE      AMOUNT
----- ----- --------- ----------
I03   O03   01-AUG-23       3950


SQL> delete from payment where inv_no='I08';

1 row deleted.

SQL> delete from invoice where inv_no='I08';

1 row deleted.

SQL> update invoice set inv_date='16-AUG-2023' where inv_no='I07';

1 row updated.







SQL> select * from payment;

PAYME INV_N PAYMENT_D PAYMENT_MODE         PAYMENT_STATUS
----- ----- --------- -------------------- ---------------
P01   I01   10-JUL-23 Card                 SUCCESS
P02   I02   15-JUL-23 UPI                  SUCCESS
P03   I03   01-AUG-23 Card                 FAILED
P04   I04   05-AUG-23 UPI                  SUCCESS
P05   I05   10-AUG-23 Net Banking          SUCCESS
P06   I06   12-AUG-23 Card                 SUCCESS
P07   I07   14-AUG-23 UPI                  FAILED
P09   I09   18-AUG-23 UPI                  SUCCESS
P10   I10   20-AUG-23 Card                 SUCCESS

9 rows selected.


SQL> select * from payment where payment_status='FAILED';

PAYME INV_N PAYMENT_D PAYMENT_MODE         PAYMENT_STATUS
----- ----- --------- -------------------- ---------------
P03   I03   01-AUG-23 Card                 FAILED
P07   I07   14-AUG-23 UPI                  FAILED

SQL> select count(payment_status) from payment where payment_status='SUCCESs';

COUNT(PAYMENT_STATUS)
---------------------
                    0

SQL> select count(payment_status) from payment where payment_status='SUCCESS';

COUNT(PAYMENT_STATUS)
---------------------
                    7

SQL> select payment_id from payment where payment_mode='UPI';

PAYME
-----
P02
P04
P07
P09

SQL> delete from payment where payment_id='P09';

1 row deleted.







SQL> select c.f_name, c.l_name,o.order_id from customer c
  2  join orders o on c.cust_id = o.cust_id;

F_NAME       L_NAME       ORDER
------------ ------------ -----
Rajesh       Kumar        O01
Priya        Sharma       O02
Pooja        Patel        O03
Amit         Verma        O04
Neha         Singh        O05
Prakash      Mehta        O06
Anjali       Gupta        O07
Rohit        Jain         O08
Priya        Sharma       O09
Sneha        Nair         O10

10 rows selected.

SQL> SELECT c.f_name,
  2         c.l_name,
  3         p.product_name,
  4         oi.quantity
  5  FROM customer c
  6  JOIN orders o
  7  ON c.cust_id = o.cust_id
  8  JOIN order_items oi
  9  ON o.order_id = oi.order_id
 10  JOIN product p
 11  ON oi.product_id = p.product_id
 12  ORDER BY c.f_name;

F_NAME       L_NAME       PRODUCT_NAME   QUANTITY
------------ ------------ ------------ ----------
Amit         Verma        Lipstick              1
Anjali       Gupta        Rice Bag              1
Neha         Singh        Sneakers              1
Pooja        Patel        Mixer                 1
Pooja        Patel        Lipstick              1
Prakash      Mehta        Football              1
Priya        Sharma       Novel                 1
Priya        Sharma       T-Shirt               1
Rajesh       Kumar        Laptop                1
Rohit        Jain         Watch                 1

10 rows selected.







SQL> select c.f_name, c.l_name,o.order_id from customer c
  2  join orders o on c.cust_id = o.cust_id;

F_NAME       L_NAME       ORDER
------------ ------------ -----
Rajesh       Kumar        O01
Priya        Sharma       O02
Pooja        Patel        O03
Amit         Verma        O04
Neha         Singh        O05
Prakash      Mehta        O06
Anjali       Gupta        O07
Rohit        Jain         O08
Priya        Sharma       O09
Sneha        Nair         O10

10 rows selected.

SQL> SELECT c.f_name,
  2         c.l_name,
  3         p.product_name,
  4         oi.quantity
  5  FROM customer c
  6  JOIN orders o
  7  ON c.cust_id = o.cust_id
  8  JOIN order_items oi
  9  ON o.order_id = oi.order_id
 10  JOIN product p
 11  ON oi.product_id = p.product_id
 12  ORDER BY c.f_name;

F_NAME       L_NAME       PRODUCT_NAME   QUANTITY
------------ ------------ ------------ ----------
Amit         Verma        Lipstick              1
Anjali       Gupta        Rice Bag              1
Neha         Singh        Sneakers              1
Pooja        Patel        Mixer                 1
Pooja        Patel        Lipstick              1
Prakash      Mehta        Football              1
Priya        Sharma       Novel                 1
Priya        Sharma       T-Shirt               1
Rajesh       Kumar        Laptop                1
Rohit        Jain         Watch                 1

10 rows selected.


CUST_ TOTAL_AMOUNT
----- ------------
C06            800
C10           3000
C02           1100
C05          12000
C07           1200
C01          50000
C08           1800
C03           3750
C04            450

9 rows selected.


SQL> select cust_id, sum(total_amount) as total_amount from orders group by cust_id;

CUST_ TOTAL_AMOUNT
----- ------------
C06            800
C10           3000
C02           1100
C05          12000
C07           1200
C01          50000
C08           1800
C03           3750
C04            450

9 rows selected.

SQL> SELECT c.f_name,
  2         c.l_name,
  3         SUM(o.total_amount) AS total_spent
  4  FROM customer c
  5  JOIN orders o
  6  ON c.cust_id = o.cust_id
  7  GROUP BY c.f_name, c.l_name;

F_NAME       L_NAME       TOTAL_SPENT
------------ ------------ -----------
Rajesh       Kumar              50000
Amit         Verma                450
Neha         Singh              12000
Prakash      Mehta                800
Anjali       Gupta               1200
Sneha        Nair                3000
Pooja        Patel               3750
Priya        Sharma              1100
Rohit        Jain                1800

9 rows selected.

SQL> SELECT i.inv_no,
  2         c.f_name,
  3         c.l_name
  4  FROM invoice i
  5  JOIN orders o
  6  ON i.order_id = o.order_id
  7  JOIN customer c
  8  ON o.cust_id = c.cust_id;

INV_N F_NAME       L_NAME
----- ------------ ------------
I01   Rajesh       Kumar
I09   Priya        Sharma
I02   Priya        Sharma
I03   Pooja        Patel
I04   Amit         Verma
I05   Neha         Singh
I06   Prakash      Mehta
I07   Anjali       Gupta
I10   Sneha        Nair

9 rows selected.

SQL> SELECT DISTINCT c.cust_id,
  2                  c.f_name,
  3                  c.l_name
  4  FROM customer c
  5  JOIN orders o
  6  ON c.cust_id = o.cust_id;

CUST_ F_NAME       L_NAME
----- ------------ ------------
C01   Rajesh       Kumar
C07   Anjali       Gupta
C04   Amit         Verma
C06   Prakash      Mehta
C03   Pooja        Patel
C05   Neha         Singh
C10   Sneha        Nair
C08   Rohit        Jain
C02   Priya        Sharma

9 rows selected.

SQL> SELECT cust_id,
  2         f_name,
  3         l_name
  4  FROM customer
  5  WHERE cust_id NOT IN (
  6      SELECT cust_id
  7      FROM orders
  8  );

no rows selected

SQL> SELECT p.product_name,
  2         c.category_name
  3  FROM product p
  4  JOIN category c
  5  ON p.category_id = c.category_id;

PRODUCT_NAME CATEGORY_NAME
------------ ------------------------------
Laptop       Electronics
T-Shirt      Clothing
Novel        Books
Mixer        Home
Lipstick     Beauty
Football     Sports
Toy Car      Toys
Rice Bag     Grocery
Sneakers     Footwear
Watch        Accessories

10 rows selected.

SQL> SELECT c.category_name,
  2         SUM(oi.quantity * oi.price) AS total_sales
  3  FROM category c
  4  JOIN product p
  5  ON c.category_id = p.category_id
  6  JOIN order_items oi
  7  ON p.product_id = oi.product_id
  8  GROUP BY c.category_name;

CATEGORY_NAME                  TOTAL_SALES
------------------------------ -----------
Clothing                               500
Footwear                              2500
Books                                  250
Beauty                                 900
Accessories                           1800
Electronics                          50000
Home                                  3500
Sports                                 800
Grocery                               1200

9 rows selected.

SQL> SELECT c.f_name,
  2         c.l_name,
  3         SUM(o.total_amount) AS total_spent
  4  FROM customer c
  5  JOIN orders o
  6  ON c.cust_id = o.cust_id
  7  GROUP BY c.f_name, c.l_name
  8  HAVING SUM(o.total_amount) = (
  9      SELECT MAX(total_spent)
 10      FROM (
 11          SELECT SUM(total_amount) AS total_spent
 12          FROM orders
 13          GROUP BY cust_id
 14      )
 15  );

F_NAME       L_NAME       TOTAL_SPENT
------------ ------------ -----------
Rajesh       Kumar              50000

SQL> SELECT DISTINCT p.product_name
  2  FROM customer c
  3  JOIN orders o
  4  ON c.cust_id = o.cust_id
  5  JOIN order_items oi
  6  ON o.order_id = oi.order_id
  7  JOIN product p
  8  ON oi.product_id = p.product_id
  9  WHERE c.area = 'DA';

PRODUCT_NAME
------------
Lipstick

SQL>