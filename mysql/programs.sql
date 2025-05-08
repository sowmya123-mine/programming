lab activity 1
 sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 27
Server version: 8.0.30-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database college;
Query OK, 1 row affected (0.11 sec)

mysql> use college;
Database changed
mysql> create table salespeople(snum integer,sname char(30),city char(30),comm decimal(10,2));
Query OK, 0 rows affected (0.36 sec)

mysql> insert into salespeople values(1002,'serves','sanjose',0.13);
Query OK, 1 row affected (0.76 sec)

mysql> insert into salespeople values(1004,'motik','london',0.11);
Query OK, 1 row affected (0.08 sec)

mysql> insert into salespeople values(1001,'peel','london',0.12);
Query OK, 1 row affected (0.10 sec)

mysql> insert into salespeople values(1007,'rafkin','barcclona',0.15);
Query OK, 1 row affected (0.63 sec)

mysql> insert into salespeople values(1003,'axelrod','newyork',0.10);
Query OK, 1 row affected (0.46 sec)

mysql> select snum,sname,city,comm from salespeople;
+------+---------+-----------+------+
| snum | sname   | city      | comm |
+------+---------+-----------+------+
| 1002 | serves  | sanjose   | 0.13 |
| 1004 | motik   | london    | 0.11 |
| 1001 | peel    | london    | 0.12 |
| 1007 | rafkin  | barcclona | 0.15 |
| 1003 | axelrod | newyork   | 0.10 |
+------+---------+-----------+------+
5 rows in set (0.00 sec)
   
 lab activity 2  
   
sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 28
Server version: 8.0.30-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database school;
Query OK, 1 row affected (0.11 sec)

mysql> use school;
Database changed
mysql> create table orders (onum integer,amt decimal(10,2),odate date,cnum integer,snum integer);
Query OK, 0 rows affected (0.85 sec)

mysql> insert into orders values(3001,18.69,'1994-10-03',2008,1007);
Query OK, 1 row affected (0.45 sec)

mysql> insert into orders values(3003,767.19,'1994-10-03',2001,1001);
Query OK, 1 row affected (0.08 sec)

mysql> insert into orders values(3002,1900.10,'1994-10-03',2007,1004);
Query OK, 1 row affected (0.06 sec)

mysql> insert into orders values(3005,5160.45,'1994-10-03',2003,1002);
Query OK, 1 row affected (0.49 sec)

mysql> insert into orders values(3006,1098.16,'1994-10-04',2008,1007);
Query OK, 1 row affected (0.51 sec)

mysql> insert into orders values(3009,1713.23,'1994-10-04',2002,1003);
Query OK, 1 row affected (0.07 sec)

mysql> insert into orders values(3007,75.75,'1994-10-05',2004,1002);
Query OK, 1 row affected (0.49 sec)

mysql> insert into orders values(3008,4723.00,'1994-10-05',2006,1001);
Query OK, 1 row affected (0.09 sec)

mysql> insert into orders values(3010,1309.95,'1994-10-06',2004,1002);
Query OK, 1 row affected (0.06 sec)

mysql> insert into orders values(3011,9891.88,'1994-10-06',2006,1001);
Query OK, 1 row affected (0.45 sec)

mysql> select onum,amt,odate,cnum,snum from orders;
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1994-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1994-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1994-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1994-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1994-10-04 | 2008 | 1007 |
| 3009 | 1713.23 | 1994-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1994-10-05 | 2004 | 1002 |
| 3008 | 4723.00 | 1994-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1994-10-06 | 2004 | 1002 |
| 3011 | 9891.88 | 1994-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
10 rows in set (0.00 sec)
mysql> select distinct snum from orders;
+------+
| snum |
+------+
| 1007 |
| 1001 |
| 1004 |
| 1002 |
| 1003 |
+------+
5 rows in set (0.01 sec)



lab activity 3
sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 29
Server version: 8.0.30-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use college;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select sname,comm from salespeople where city='london';
+-------+------+
| sname | comm |
+-------+------+
| motik | 0.11 |
| peel  | 0.12 |
+-------+------+
2 rows in set (0.00 sec)


lab activity 4

sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 32
Server version: 8.0.30-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database manager;
Query OK, 1 row affected (0.09 sec)

mysql> use manager;
Database changed
mysql> create table customers(cnum integer,cname char(30),city char(30),rating integer,snum integer);
Query OK, 0 rows affected (0.93 sec)

mysql> insert into customers values(2001,'hoffman','london',100,1001);
Query OK, 1 row affected (0.46 sec)

mysql> insert into customers values(2002,'giovance','rome',200,1003);
Query OK, 1 row affected (0.08 sec)

mysql> insert into customers values(2003,'lice','sanjose',300,1002);
Query OK, 1 row affected (0.07 sec)

mysql> insert into customers values(2004,'grass','brelin',100,1002);
Query OK, 1 row affected (0.09 sec)

mysql> insert into customers values(2006,'clemens','london',300,1007);
Query OK, 1 row affected (0.47 sec)

mysql> insert into customers values(2007,'pereira','rome',100,1004);
Query OK, 1 row affected (0.08 sec)

mysql> select snum,cname,city,rating,snum from customers;
+------+----------+---------+--------+------+
| snum | cname    | city    | rating | snum |
+------+----------+---------+--------+------+
| 1001 | hoffman  | london  |    100 | 1001 |
| 1003 | giovance | rome    |    200 | 1003 |
| 1002 | lice     | sanjose |    300 | 1002 |
| 1002 | grass    | brelin  |    100 | 1002 |
| 1007 | clemens  | london  |    300 | 1007 |
| 1004 | pereira  | rome    |    100 | 1004 |
+------+----------+---------+--------+------+
6 rows in set (0.00 sec)

mysql> select cname,rating from customers where rating=100;
+---------+--------+
| cname   | rating |
+---------+--------+
| hoffman |    100 |
| grass   |    100 |
| pereira |    100 |
+---------+--------+
3 rows in set (0.00 sec)


lab activity 5

 sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 33
Server version: 8.0.30-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database bakery;
Query OK, 1 row affected (0.12 sec)

mysql> use bakery;
Database changed
mysql> create table orders(orderno integer,amount decimal(10,2),odate date,cnum integer,snum integer);
Query OK, 0 rows affected (0.73 sec)

mysql> insert into orders values(3001,18.69,'1994-10-03',2008,1007);
Query OK, 1 row affected (0.07 sec)

mysql> insert into orders values(3003,767.19,'1994-10-03',2001,1001);
Query OK, 1 row affected (0.10 sec)

mysql> insert into orders values(3002,1900.10,'1994-10-03',2007,1004);
Query OK, 1 row affected (0.07 sec)

mysql> insert into orders values(3005,5160.45,'1994-10-03',2003,1002);
Query OK, 1 row affected (0.46 sec)

mysql> insert into orders values(3006,1098.16,'1994-10-04',2008,1007);
Query OK, 1 row affected (0.07 sec)

mysql> insert into orders values(3009,1713.23,'1994-10-05',2002,1003);
Query OK, 1 row affected (0.07 sec)

mysql> insert into orders values(3007,75.75,'1994-10-05',2004,1002);
Query OK, 1 row affected (0.45 sec)

mysql> insert into orders values(3008,4273.00,'1994-10-05',2006,1001);
Query OK, 1 row affected (0.10 sec)

mysql> insert into orders values(3010,1309.95,'1994-10-06',2004,1002);
Query OK, 1 row affected (0.08 sec)

mysql> insert into orders values(3011,9891.88,'1994-10-06',2006,1001);
Query OK, 1 row affected (0.51 sec)

mysql> select orderno,amount,odate from orders;
+---------+---------+------------+
| orderno | amount  | odate      |
+---------+---------+------------+
|    3001 |   18.69 | 1994-10-03 |
|    3003 |  767.19 | 1994-10-03 |
|    3002 | 1900.10 | 1994-10-03 |
|    3005 | 5160.45 | 1994-10-03 |
|    3006 | 1098.16 | 1994-10-04 |
|    3009 | 1713.23 | 1994-10-05 |
|    3007 |   75.75 | 1994-10-05 |
|    3008 | 4273.00 | 1994-10-05 |
|    3010 | 1309.95 | 1994-10-06 |
|    3011 | 9891.88 | 1994-10-06 |
+---------+---------+------------+
10 rows in set (0.00 sec)


