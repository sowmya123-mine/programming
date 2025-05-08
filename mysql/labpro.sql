lab activity 6

mysql> use manager;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select city,rating from customers where city='sanjose' and rating>200;
+---------+--------+
| city    | rating |
+---------+--------+
| sanjose |    300 |
+---------+--------+
1 row in set (0.00 sec)

lab activity 7

mysql> use manager;
Database changed
mysql> select city,rating from customers where city='sanjose'or rating>200;
+---------+--------+
| city    | rating |
+---------+--------+
| sanjose |    300 |
| london  |    300 |
+---------+--------+
2 rows in set (0.00 sec)

lab activity 8

 sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 34
Server version: 8.0.30-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use bakery;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select *from orders;
+---------+---------+------------+------+------+
| orderno | amount  | odate      | cnum | snum |
+---------+---------+------------+------+------+
|    3001 |   18.69 | 1994-10-03 | 2008 | 1007 |
|    3003 |  767.19 | 1994-10-03 | 2001 | 1001 |
|    3002 | 1900.10 | 1994-10-03 | 2007 | 1004 |
|    3005 | 5160.45 | 1994-10-03 | 2003 | 1002 |
|    3006 | 1098.16 | 1994-10-04 | 2008 | 1007 |
|    3009 | 1713.23 | 1994-10-05 | 2002 | 1003 |
|    3007 |   75.75 | 1994-10-05 | 2004 | 1002 |
|    3008 | 4273.00 | 1994-10-05 | 2006 | 1001 |
|    3010 | 1309.95 | 1994-10-06 | 2004 | 1002 |
|    3011 | 9891.88 | 1994-10-06 | 2006 | 1001 |
+---------+---------+------------+------+------+
10 rows in set (0.00 sec)

mysql> select orderno,amount from orders where amount>1000;
+---------+---------+
| orderno | amount  |
+---------+---------+
|    3002 | 1900.10 |
|    3005 | 5160.45 |
|    3006 | 1098.16 |
|    3009 | 1713.23 |
|    3008 | 4273.00 |
|    3010 | 1309.95 |
|    3011 | 9891.88 |
+---------+---------+
7 rows in set (0.00 sec)

lab activity 9

mysql> use college;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select *from salespeople;
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

mysql> select sname,city,comm from salespeople where city='london' and comm>0.10;
+-------+--------+------+
| sname | city   | comm |
+-------+--------+------+
| motik | london | 0.11 |
| peel  | london | 0.12 |
+-------+--------+------+
2 rows in set (0.00 sec)

lab activity 10

mysql> use manager;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> use manager;
Database changed
mysql> select *from customers;
+------+----------+---------+--------+------+
| cnum | cname    | city    | rating | snum |
+------+----------+---------+--------+------+
| 2001 | hoffman  | london  |    100 | 1001 |
| 2002 | giovance | rome    |    200 | 1003 |
| 2003 | lice     | sanjose |    300 | 1002 |
| 2004 | grass    | brelin  |    100 | 1002 |
| 2006 | clemens  | london  |    300 | 1007 |
| 2007 | pereira  | rome    |    100 | 1004 |
+------+----------+---------+--------+------+
6 rows in set (0.00 sec)
mysql> select rating,city,cname from customers where rating<=100 or city='rome'; 
+--------+--------+----------+
| rating | city   | cname    |
+--------+--------+----------+
|    100 | london | hoffman  |
|    200 | rome   | giovance |
|    100 | brelin | grass    |
|    100 | rome   | pereira  |
+--------+--------+----------+
4 rows in set (0.00 sec)


lab activity 11

mysql> use college;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select *from salespeople;
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

mysql> select sname,city from salespeople where city in('barcelona','london');
+-------+--------+
| sname | city   |
+-------+--------+
| motik | london |
| peel  | london |
+-------+--------+
2 rows in set (0.00 sec)
