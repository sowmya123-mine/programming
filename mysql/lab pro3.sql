
lab activity 49

mysql> use bakery;
Database changed
mysql> select comm from salespeople where snum in(select snum from customers where city='london');
+------+
| comm |
+------+
| 0.12 |
| 0.15 |
+------+
2 rows in set (0.01 sec)
















lab activity 46

mysql> use bakery;
Database changed
mysql> select *from orders where amount>(select avg(amount) from orders where odate='1994-10-03');
+---------+---------+------------+------+------+
| orderno | amount  | odate      | cnum | snum |
+---------+---------+------------+------+------+
|    3005 | 5160.45 | 1994-10-03 | 2003 | 1002 |
|    3008 | 4273.00 | 1994-10-05 | 2006 | 1001 |
|    3011 | 9891.88 | 1994-10-06 | 2006 | 1001 |
+---------+---------+------------+------+------+
3 rows in set (0.00 sec)

lab activity 47
mysql> use sales;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select avg(comm) from salespeople where city='london';
+-----------+
| avg(comm) |
+-----------+
|  0.115000 |
+-----------+
1 row in set (0.00 sec)

lab activity 48


mysql> use manager;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select snum,cnum from customers where cnum in(select cnum from customers where city='london');
+------+------+
| snum | cnum |
+------+------+
| 1001 | 2001 |
| 1007 | 2006 |
+------+------+
2 rows in set (0.03 sec)

