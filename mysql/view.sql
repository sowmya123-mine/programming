sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 179
Server version: 8.0.30-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bakery             |
| college            |
| information_schema |
| linuxhint          |
| manager            |
| mysql              |
| performance_schema |
| school             |
| sys                |
+--------------------+
9 rows in set (0.00 sec)

mysql> use college;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+-------------------+
| Tables_in_college |
+-------------------+
| course            |
| student           |
+-------------------+
2 rows in set (0.00 sec)

mysql> select *from student;
Empty set (0.00 sec)

mysql> select *from course;
Empty set (0.00 sec)

mysql> use school;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+------------------+
| Tables_in_school |
+------------------+
| orders           |
+------------------+
1 row in set (0.00 sec)

mysql> select *form orders;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'form orders' at line 1
mysql> select *from orders;
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

mysql> create view cse as
    -> select *from orders where onum='3001';
Query OK, 0 rows affected (0.55 sec)

mysql> select *from orders;
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

mysql> select *from cse;
+------+-------+------------+------+------+
| onum | amt   | odate      | cnum | snum |
+------+-------+------------+------+------+
| 3001 | 18.69 | 1994-10-03 | 2008 | 1007 |
+------+-------+------------+------+------+
1 row in set (0.00 sec)

mysql> create view ece as
    -> select *from orders where cnum='2004';
Query OK, 0 rows affected (0.46 sec)

mysql> select *from ece;
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3007 |   75.75 | 1994-10-05 | 2004 | 1002 |
| 3010 | 1309.95 | 1994-10-06 | 2004 | 1002 |
+------+---------+------------+------+------+
2 rows in set (0.00 sec)

mysql> create view as civil as
    -> select *from orders where cnum='2004';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'as civil as
select *from orders where cnum='2004'' at line 1
mysql> create view civil as
    -> select *from orders where cnum='2007';
Query OK, 0 rows affected (0.53 sec)

mysql> select *from civil;
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3002 | 1900.10 | 1994-10-03 | 2007 | 1004 |
+------+---------+------------+------+------+
1 row in set (0.00 sec)

mysql> update orders set cnum='2012' where cnum=2004;
Query OK, 2 rows affected (0.48 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select *from orders;
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1994-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1994-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1994-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1994-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1994-10-04 | 2008 | 1007 |
| 3009 | 1713.23 | 1994-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1994-10-05 | 2012 | 1002 |
| 3008 | 4723.00 | 1994-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1994-10-06 | 2012 | 1002 |
| 3011 | 9891.88 | 1994-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
10 rows in set (0.00 sec)

mysql> select *from ece;
Empty set (0.00 sec)

mysql> select *from ece;
Empty set (0.00 sec)

mysql> select *from cse;
+------+-------+------------+------+------+
| onum | amt   | odate      | cnum | snum |
+------+-------+------------+------+------+
| 3001 | 18.69 | 1994-10-03 | 2008 | 1007 |
+------+-------+------------+------+------+
1 row in set (0.00 sec)

mysql> update orders set cnum=2021 where cnum=2008;
Query OK, 2 rows affected (0.44 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select *from cse;
+------+-------+------------+------+------+
| onum | amt   | odate      | cnum | snum |
+------+-------+------------+------+------+
| 3001 | 18.69 | 1994-10-03 | 2021 | 1007 |
+------+-------+------------+------+------+
1 row in set (0.00 sec)

mysql> select *from ece;
Empty set (0.00 sec)

mysql> update cse set odate='1994-10-24' where onum=3001;
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from cse;
+------+-------+------------+------+------+
| onum | amt   | odate      | cnum | snum |
+------+-------+------------+------+------+
| 3001 | 18.69 | 1994-10-24 | 2021 | 1007 |
+------+-------+------------+------+------+
1 row in set (0.00 sec)

mysql> select *from orders;
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1994-10-24 | 2021 | 1007 |
| 3003 |  767.19 | 1994-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1994-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1994-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1994-10-04 | 2021 | 1007 |
| 3009 | 1713.23 | 1994-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1994-10-05 | 2012 | 1002 |
| 3008 | 4723.00 | 1994-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1994-10-06 | 2012 | 1002 |
| 3011 | 9891.88 | 1994-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
10 rows in set (0.00 sec)

mysql> show tables;
+------------------+
| Tables_in_school |
+------------------+
| civil            |
| cse              |
| ece              |
| orders           |
+------------------+
4 rows in set (0.00 sec)

mysql> select *from orders;
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1994-10-24 | 2021 | 1007 |
| 3003 |  767.19 | 1994-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1994-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1994-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1994-10-04 | 2021 | 1007 |
| 3009 | 1713.23 | 1994-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1994-10-05 | 2012 | 1002 |
| 3008 | 4723.00 | 1994-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1994-10-06 | 2012 | 1002 |
| 3011 | 9891.88 | 1994-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
10 rows in set (0.00 sec)

mysql> select *from cse;
+------+-------+------------+------+------+
| onum | amt   | odate      | cnum | snum |
+------+-------+------------+------+------+
| 3001 | 18.69 | 1994-10-24 | 2021 | 1007 |
+------+-------+------------+------+------+
1 row in set (0.00 sec)

mysql> create view combine as 
    -> select orders.onum,orders.amt,cse.cnum,cse.snum from orders,cse where orders.onum=combine.onum;
ERROR 1054 (42S22): Unknown column 'combine.onum' in 'where clause'
mysql> create view combine as
    -> select orders.onum,orders.amt,cse.cnum,cse.snum from orders,cse where orders.onum=cse.onum;
Query OK, 0 rows affected (0.24 sec)

mysql> show tables;
+------------------+
| Tables_in_school |
+------------------+
| civil            |
| combine          |
| cse              |
| ece              |
| orders           |
+------------------+
5 rows in set (0.00 sec)

mysql> select *from combine;
+------+-------+------+------+
| onum | amt   | cnum | snum |
+------+-------+------+------+
| 3001 | 18.69 | 2021 | 1007 |
+------+-------+------+------+
1 row in set (0.00 sec)

mysql> drop view combine
    -> drop view combine;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'drop view combine' at line 2
mysql> drop view combine;
Query OK, 0 rows affected (0.16 sec)

mysql> select *from orders;
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1994-10-24 | 2021 | 1007 |
| 3003 |  767.19 | 1994-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1994-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1994-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1994-10-04 | 2021 | 1007 |
| 3009 | 1713.23 | 1994-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1994-10-05 | 2012 | 1002 |
| 3008 | 4723.00 | 1994-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1994-10-06 | 2012 | 1002 |
| 3011 | 9891.88 | 1994-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
10 rows in set (0.00 sec)

mysql> show tables;
+------------------+
| Tables_in_school |
+------------------+
| civil            |
| cse              |
| ece              |
| orders           |
+------------------+
4 rows in set (0.01 sec)

