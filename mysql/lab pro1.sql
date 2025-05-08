lab activity 12

mysql> use college;
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

mysql> select sname,comm from salespeople where comm>0.10 and comm<0.12;
+-------+------+
| sname | comm |
+-------+------+
| motik | 0.11 |
+-------+------+
1 row in set (0.29 sec)


lab activity 13

mysql> use manager;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

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

mysql> select cname,city from customers where city is null;
Empty set (0.01 sec)

lab activity 14

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

mysql> select *from orders where odate in('1994-10-03','1994-10-04');
+---------+---------+------------+------+------+
| orderno | amount  | odate      | cnum | snum |
+---------+---------+------------+------+------+
|    3001 |   18.69 | 1994-10-03 | 2008 | 1007 |
|    3003 |  767.19 | 1994-10-03 | 2001 | 1001 |
|    3002 | 1900.10 | 1994-10-03 | 2007 | 1004 |
|    3005 | 5160.45 | 1994-10-03 | 2003 | 1002 |
|    3006 | 1098.16 | 1994-10-04 | 2008 | 1007 |
+---------+---------+------------+------+------+
5 rows in set (0.00 sec)


lab activity 17

mysql> use bakery;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select orderno from orders where amount!=0 or amount is not null;
+---------+
| orderno |
+---------+
|    3001 |
|    3003 |
|    3002 |
|    3005 |
|    3006 |
|    3009 |
|    3007 |
|    3008 |
|    3010 |
|    3011 |
+---------+
10 rows in set (0.00 sec)

lab activity 18

mysql> use bakery;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select count(distinct snum) from orders;
+----------------------+
| count(distinct snum) |
+----------------------+
|                    5 |
+----------------------+
1 row in set (0.05 sec)


lab activity 19

mysql> use bakery;
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

mysql> select odate,snum,max(amount) from orders group by odate,snum order by odate,snum;
+------------+------+-------------+
| odate      | snum | max(amount) |
+------------+------+-------------+
| 1994-10-03 | 1001 |      767.19 |
| 1994-10-03 | 1002 |     5160.45 |
| 1994-10-03 | 1004 |     1900.10 |
| 1994-10-03 | 1007 |       18.69 |
| 1994-10-04 | 1007 |     1098.16 |
| 1994-10-05 | 1001 |     4273.00 |
| 1994-10-05 | 1002 |       75.75 |
| 1994-10-05 | 1003 |     1713.23 |
| 1994-10-06 | 1001 |     9891.88 |
| 1994-10-06 | 1002 |     1309.95 |
+------------+------+-------------+
10 rows in set (0.01 sec)


lab activity 20

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
10 rows in set (0.01 sec)

mysql> select odate,snum max(amount) from orders where amt>3000 ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'max(amount) from orders where amt>3000' at line 1
mysql> select odate,snum,max(amount) from orders where amount>3000;
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'bakery.orders.odate'; this is incompatible with sql_mode=only_full_group_by
mysql> select odate,snum,max(amount) from orders where amount>3000 group by odate,snum;
+------------+------+-------------+
| odate      | snum | max(amount) |
+------------+------+-------------+
| 1994-10-03 | 1002 |     5160.45 |
| 1994-10-05 | 1001 |     4273.00 |
| 1994-10-06 | 1001 |     9891.88 |
+------------+------+-------------+
3 rows in set (0.00 sec)

mysql> select odate,snum,max(amount) from orders where amount>3000 group by odate,snum order by odate,snum;
+------------+------+mysql> select orderno,snum,amount,amount*0.12 from orders order by snum;
+---------+------+---------+-------------+
| orderno | snum | amount  | amount*0.12 |
+---------+------+---------+-------------+
|    3003 | 1001 |  767.19 |     92.0628 |
|    3008 | 1001 | 4273.00 |    512.7600 |
|    3011 | 1001 | 9891.88 |   1187.0256 |
|    3005 | 1002 | 5160.45 |    619.2540 |
|    3007 | 1002 |   75.75 |      9.0900 |
|    3010 | 1002 | 1309.95 |    157.1940 |
|    3009 | 1003 | 1713.23 |    205.5876 |
|    3002 | 1004 | 1900.10 |    228.0120 |
|    3001 | 1007 |   18.69 |      2.2428 |
|    3006 | 1007 | 1098.16 |    131.7792 |
+---------+------+---------+-------------+
10 rows in set (0.00 sec)

lab activity 21
mysql> use bakery;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select odate,amount,snum,cnum from orders where amount=(select max(amount) from orders);
+------------+---------+------+------+
| odate      | amount  | snum | cnum |
+------------+---------+------+------+
| 1994-10-06 | 9891.88 | 1001 | 2006 |
+------------+---------+------+------+
1 row in set (0.00 sec)

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

lab activity 22


mysql> use bakery;
Database changed
mysql> select count(*) from orders where odate='1994-10-03';
+----------+
| count(*) |
+----------+
|        4 |
+----------+
1 row in set (0.00 sec)

-------------+
| odate      | snum | max(amount) |
+------------+------+-------------+
| 1994-10-03 | 1002 |     5160.45 |
| 1994-10-05 | 1001 |     4273.00 |
| 1994-10-06 | 1001 |     9891.88 |
+------------+------+-------------+
3 rows in set (0.01 sec)

lab activity 23

mysql> use manager;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+-------------------+
| Tables_in_manager |
+-------------------+
| customers         |
+-------------------+
1 row in set (0.00 sec)

mysql> select count(distinct city) from customers;
+----------------------+
| count(distinct city) |
+----------------------+
|                    4 |
+----------------------+
1 row in set (0.00 sec)
 
laba ctivity 24
mysql> use bakery;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select cnum,min(amount) from orders group by cnum;
+------+-------------+
| cnum | min(amount) |
+------+-------------+
| 2008 |       18.69 |
| 2001 |      767.19 |
| 2007 |     1900.10 |
| 2003 |     5160.45 |
| 2002 |     1713.23 |
| 2004 |       75.75 |
| 2006 |     4273.00 |
+------+-------------+
7 rows in set (0.00 sec)

lab activity 25

mysql> use manager;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select min(cname)from cutomers where cname like 9%;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%' at line 1
mysql> use manager;
Database changed
mysql> select min(cname) from customers where cname like 'g%';
+------------+
| min(cname) |
+------------+
| giovance   |
+------------+
1 row in set (0.30 sec)


lab activity 26

mysql> use bakery;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select odate,amount,snum,cnum from orders where amount=(select max(amount) from orders);
+------------+---------+------+------+
| odate      | amount  | snum | cnum |
+------------+---------+------+------+
| 1994-10-06 | 9891.88 | 1001 | 2006 |
+------------+---------+------+------+
1 row in set (0.00 sec)

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

mysql> select count(*) from orders;
+----------+
| count(*) |
+----------+
|       10 |
+----------+
1 row in set (0.01 sec)


lab activity 27

mysql> use bakery;
Database changed
mysql> select orderno,snum,amount,amount*0.12 from orders order by snum;
+---------+------+---------+-------------+
| orderno | snum | amount  | amount*0.12 |
+---------+------+---------+-------------+
|    3003 | 1001 |  767.19 |     92.0628 |
|    3008 | 1001 | 4273.00 |    512.7600 |
|    3011 | 1001 | 9891.88 |   1187.0256 |
|    3005 | 1002 | 5160.45 |    619.2540 |
|    3007 | 1002 |   75.75 |      9.0900 |
|    3010 | 1002 | 1309.95 |    157.1940 |
|    3009 | 1003 | 1713.23 |    205.5876 |
|    3002 | 1004 | 1900.10 |    228.0120 |
|    3001 | 1007 |   18.69 |      2.2428 |
|    3006 | 1007 | 1098.16 |    131.7792 |
+---------+------+---------+-------------+
10 rows in set (0.00 sec)

lab activity 28

mysql> use manager;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select city as 'city',max(rating) as 'rating high' from customers group by city;
+---------+-------------+
| city    | rating high |
+---------+-------------+
| london  |         300 |
| rome    |         200 |
| sanjose |         300 |
| brelin  |         100 |
+---------+-------------+
4 rows in set (0.29 sec)

lab activity 29
mysql> use bakery;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select odate,count(orderno) from orders group by odate order by count(orderno);
+------------+----------------+
| odate      | count(orderno) |
+------------+----------------+
| 1994-10-04 |              1 |
| 1994-10-06 |              2 |
| 1994-10-05 |              3 |
| 1994-10-03 |              4 |
+------------+----------------+
4 rows in set (0.00 sec)

lab activity 30

mysql> use bakery;
Database changed
mysql> select sname,cname from salespeople,customers where salespeople.city=customers.city;
+--------+---------+
| sname  | cname   |
+--------+---------+
| peel   | hoffman |
| motik  | hoffman |
| serves | lice    |
| peel   | clemens |
| motik  | clemens |
+--------+---------+
5 rows in set (0.00 sec)

lab activity 31

mysql> use bakery;
Database changed
mysql> select cname,sname from customers,salespeople where customers.snum=salespeople.snum;
+----------+---------+
| cname    | sname   |
+----------+---------+
| hoffman  | peel    |
| giovance | axelrod |
| lice     | serves  |
| grass    | serves  |
| clemens  | rafkin  |
| pereira  | motik   |
+----------+---------+
6 rows in set (0.00 sec)


lab activity 32

mysql> use bakery;
Database changed
mysql> select orderno,cname from orders,customers where orders.cnum=customers.cnum;
+---------+----------+
| orderno | cname    |
+---------+----------+
|    3003 | hoffman  |
|    3002 | pereira  |
|    3005 | lice     |
|    3009 | giovance |
|    3007 | grass    |
|    3008 | clemens  |
|    3010 | grass    |
|    3011 | clemens  |
+---------+----------+
8 rows in set (0.01 sec)

lab activity 33

mysql> use bakery;
Database changed
mysql> select orderno,sname,cname from orders,customers ,salespeople where orders.cnum=customers.cnum and orders.snum=salespeople.snum;
+---------+---------+----------+
| orderno | sname   | cname    |
+---------+---------+----------+
|    3003 | peel    | hoffman  |
|    3009 | axelrod | giovance |
|    3005 | serves  | lice     |
|    3010 | serves  | grass    |
|    3007 | serves  | grass    |
|    3011 | peel    | clemens  |
|    3008 | peel    | clemens  |
|    3002 | motik   | pereira  |
+---------+---------+----------+
8 rows in set (0.00 sec)

lab activity 34

mysql> use bakery;
Database changed
mysql> select cname,sname,comm from customers,salespeople where comm>0.12 and customers.snum=salespeople.snum;
+---------+--------+------+
| cname   | sname  | comm |
+---------+--------+------+
| lice    | serves | 0.13 |
| grass   | serves | 0.13 |
| clemens | rafkin | 0.15 |
+---------+--------+------+
3 rows in set (0.00 sec)

lab activity 35

mysql> use bakery;
Database changed
mysql> select sname,amount * comm from orders,customers,salespeople where rating>100 and salespeople.snum=customers.snum and salespeople.snum=orders.snum and customers.cnum=orders.cnum;
+---------+---------------+
| sname   | amount * comm |
+---------+---------------+
| serves  |      670.8585 |
| axelrod |      171.3230 |
+---------+---------------+
2 rows in set (0.00 sec)

lab activity 40

mysql> use bakery;
Database changed
mysql> select cname from customers where snum in(select snum from customers group by snum having count(snum)>1);
+-------+
| cname |
+-------+
| lice  |
| grass |
+-------+
2 rows in set (0.00 sec)

lab activity 43

mysql> use bakery;
Database changed
mysql> select cname,city from customers where rating=(select rating from customers where cname='hoffman')and cname!='hoffman';
+---------+--------+
| cname   | city   |
+---------+--------+
| grass   | brelin |
| pereira | rome   |
+---------+--------+
2 rows in set (0.00 sec)
