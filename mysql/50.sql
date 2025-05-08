mysql> select *from student;
+-------+---------+----------+
| stdid | stdname | stdmarks |
+-------+---------+----------+
|     1 | meghana |       95 |
|     2 | anusha  |       85 |
|     3 | asritha |       75 |
+-------+---------+----------+
3 rows in set (0.00 sec)

mysql> insert into student values(4,'sai',100);
Query OK, 1 row affected (0.73 sec)

mysql> insert into student values(5,'teja',80);
Query OK, 1 row affected (0.07 sec)

mysql> insert into student values(6,'rama',95);
Query OK, 1 row affected (0.07 sec)

mysql> insert into student values(7,'prassu',75);
Query OK, 1 row affected (0.09 sec)

mysql> insert into student values(8,'pandu',60);
Query OK, 1 row affected (0.06 sec)

mysql> insert into student values(9,'nandu',50);
Query OK, 1 row affected (0.47 sec)

mysql> insert into student values(10,'shasmi',80);
Query OK, 1 row affected (0.10 sec)

mysql> select *from student;
+-------+---------+----------+
| stdid | stdname | stdmarks |
+-------+---------+----------+
|     1 | meghana |       95 |
|     2 | anusha  |       85 |
|     3 | asritha |       75 |
|     4 | sai     |      100 |
|     5 | teja    |       80 |
|     6 | rama    |       95 |
|     7 | prassu  |       75 |
|     8 | pandu   |       60 |
|     9 | nandu   |       50 |
|    10 | shasmi  |       80 |
+-------+---------+----------+
10 rows in set (0.00 sec)

mysql> select min(marks) from student;
ERROR 1054 (42S22): Unknown column 'marks' in 'field list'
mysql> select min(stdmarks) from student;
+---------------+
| min(stdmarks) |
+---------------+
|            50 |
+---------------+
1 row in set (0.00 sec)

mysql> select max(stdmarks) from student;
+---------------+
| max(stdmarks) |
+---------------+
|           100 |
+---------------+
1 row in set (0.00 sec)

mysql> select count(stdmarks) from student;
+-----------------+
| count(stdmarks) |
+-----------------+
|              10 |
+-----------------+
1 row in set (0.00 sec)

mysql> select distinct(stdmarks) from student;
+----------+
| stdmarks |
+----------+
|       95 |
|       85 |
|       75 |
|      100 |
|       80 |
|       60 |
|       50 |
+----------+
7 rows in set (0.01 sec)

mysql> select sum(stdmarks) from student;
+---------------+
| sum(stdmarks) |
+---------------+
|           795 |
+---------------+
1 row in set (0.00 sec)

mysql> select avg(stdmarks) from student;
+---------------+
| avg(stdmarks) |
+---------------+
|       79.5000 |
+---------------+
1 row in set (0.00 sec)

mysql> use bakery;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+------------------+
| Tables_in_bakery |
+------------------+
| customers        |
| orders           |
| salespeople      |
+------------------+
3 rows in set (0.01 sec)

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
mysql> show tables;
+------------------+
| Tables_in_bakery |
+------------------+
| customers        |
| orders           |
| salespeople      |
+------------------+
3 rows in set (0.00 sec)

mysql> select snum from orders where snum>any(select snum from customers);
+------+
| snum |
+------+
| 1007 |
| 1004 |
| 1002 |
| 1007 |
| 1003 |
| 1002 |
| 1002 |
+------+
7 rows in set (0.00 sec)

mysql> select snum from orders where snum=any(select snum from customers);
+------+
| snum |
+------+
| 1007 |
| 1001 |
| 1004 |
| 1002 |
| 1007 |
| 1003 |
| 1002 |
| 1001 |
| 1002 |
| 1001 |
+------+
10 rows in set (0.00 sec)

mysql> select snum from orders where snum>any(select snum from customers);
+------+
| snum |
+------+
| 1007 |
| 1004 |
| 1002 |
| 1007 |
| 1003 |
| 1002 |
| 1002 |
+------+
7 rows in set (0.00 sec)

mysql> select snum from orders where snum<any(select snum from customers);
+------+
| snum |
+------+
| 1001 |
| 1004 |
| 1002 |
| 1003 |
| 1002 |
| 1001 |
| 1002 |
| 1001 |
+------+
8 rows in set (0.00 sec)

mysql> select snum from orders where snum<all(select snum from customers);
Empty set (0.00 sec)

mysql> select snum from orders where snum=all(select snum from customers);
Empty set (0.00 sec)

mysql> select snum from orders where snum=all(select snum from customers);
Empty set (0.00 sec)

mysql> select snum from orders where snum=all(select snum from customers);
Empty set (0.00 sec)

mysql> select snum from orders where snum<all(select snum from customers);
Empty set (0.00 sec)

mysql> select snum from orders where snum<exists(select snum from customers);
Empty set (0.00 sec)

mysql> select snum from orders where snum!=all(select snum from customers);
Empty set (0.00 sec)

mysql> select snum from orders where snum!=any(select snum from customers);
+------+
| snum |
+------+
| 1007 |
| 1001 |
| 1004 |
| 1002 |
| 1007 |
| 1003 |
| 1002 |
| 1001 |
| 1002 |
| 1001 |
+------+
10 rows in set (0.00 sec)

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

mysql> select orderno,amount from orders where snum=any(select snum from customers;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> select orderno,amount from orders where snum=any(select snum from customers);
+---------+---------+
| orderno | amount  |
+---------+---------+
|    3001 |   18.69 |
|    3003 |  767.19 |
|    3002 | 1900.10 |
|    3005 | 5160.45 |
|    3006 | 1098.16 |
|    3009 | 1713.23 |
|    3007 |   75.75 |
|    3008 | 4273.00 |
|    3010 | 1309.95 |
|    3011 | 9891.88 |
+---------+---------+
10 rows in set (0.00 sec)

mysql> select orderno,amount from orders where snum=any(select snum from salespeople);
+---------+---------+
| orderno | amount  |
+---------+---------+
|    3001 |   18.69 |
|    3003 |  767.19 |
|    3002 | 1900.10 |
|    3005 | 5160.45 |
|    3006 | 1098.16 |
|    3009 | 1713.23 |
|    3007 |   75.75 |
|    3008 | 4273.00 |
|    3010 | 1309.95 |
|    3011 | 9891.88 |
+---------+---------+
10 rows in set (0.00 sec)

mysql> select orderno,amount from orders where snum<any(select from customers);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from customers)' at line 1
mysql> select orderno,amount from orders where snum<any(select snum  from customers);
+---------+---------+
| orderno | amount  |
+---------+---------+
|    3003 |  767.19 |
|    3002 | 1900.10 |
|    3005 | 5160.45 |
|    3009 | 1713.23 |
|    3007 |   75.75 |
|    3008 | 4273.00 |
|    3010 | 1309.95 |
|    3011 | 9891.88 |
+---------+---------+
8 rows in set (0.00 sec)

mysql> select orderno,amount from orders where snum>any(select snum  from customers);
+---------+---------+
| orderno | amount  |
+---------+---------+
|    3001 |   18.69 |
|    3002 | 1900.10 |
|    3005 | 5160.45 |
|    3006 | 1098.16 |
|    3009 | 1713.23 |
|    3007 |   75.75 |
|    3010 | 1309.95 |
+---------+---------+
7 rows in set (0.00 sec)
 |
+---------+---------+------------+------+------+
10 rows in set (0.03 sec)

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
6 rows in set (0.03 sec)

mysql> select snum,sname from salespeople where exists(select snum from orders where orders.snum=salespeople.snum);
+------+---------+
| snum | sname   |
+------+---------+
| 1002 | serves  |
| 1004 | motik   |
| 1001 | peel    |
| 1007 | rafkin  |
| 1003 | axelrod |
+------+---------+
5 rows in set (0.00 sec)
+----------+
| pi()     |
+----------+
| 3.141593 |
+----------+
1 row in set (0.00 sec)

mysql> select pow(2,3);
+----------+
| pow(2,3) |
+----------+
|        8 |
+----------+
1 row in set (0.00 sec)

mysql> select radians(30degrees);
ERROR 1054 (42S22): Unknown column '30degrees' in 'field list'
mysql> select radians(30);
+--------------------+
| radians(30)        |
+--------------------+
| 0.5235987755982988 |
+--------------------+
1 row in set (0.00 sec)

mysql> select rand();
+----------------------+
| rand()               |
+----------------------+
| 0.027276076401840967 |
+----------------------+
1 row in set (0.00 sec)

mysql> select rand();
+--------------------+
| rand()             |
+--------------------+
| 0.5220167939756222 |
+--------------------+
1 row in set (0.00 sec)

mysql> select sign(5);
+---------+
| sign(5) |
+---------+
|       1 |
+---------+
1 row in set (0.00 sec)

mysql> select sign(-5);
+----------+
| sign(-5) |
+----------+
|       -1 |
+----------+
1 row in set (0.00 sec)

mysql> select sqrt(25);
+----------+
| sqrt(25) |
+----------+
|        5 |
+----------+
1 row in set (0.00 sec)

