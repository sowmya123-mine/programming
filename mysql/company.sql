mysql> use company;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+-------------------+
| Tables_in_company |
+-------------------+
| index_company     |
+-------------------+
1 row in set (0.00 sec)

mysql> desc index_company;
+--------------------+----------+------+-----+---------+-------+
| Field              | Type     | Null | Key | Default | Extra |
+--------------------+----------+------+-----+---------+-------+
| product_id         | int      | YES  |     | NULL    |       |
| product_name       | char(10) | YES  |     | NULL    |       |
| psellingprice      | int      | YES  |     | NULL    |       |
| profit             | int      | YES  |     | NULL    |       |
| manufacturing_date | date     | YES  |     | NULL    |       |
+--------------------+----------+------+-----+---------+-------+
5 rows in set (0.05 sec)

mysql> insert into index_company values(1,'saop',30,3,curdate());
Query OK, 1 row affected (0.75 sec)

mysql> select *from index_company;
+------------+--------------+---------------+--------+--------------------+
| product_id | product_name | psellingprice | profit | manufacturing_date |
+------------+--------------+---------------+--------+--------------------+
|          1 | saop         |            30 |      3 | 2022-11-30         |
+------------+--------------+---------------+--------+--------------------+
1 row in set (0.00 sec)

mysql> insert into index_company values(1,'saop',30,3,'2022-8-15'\);
ERROR: 
Unknown command '\)'.
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '\)' at line 1
mysql> insert into index_company values(2,'earphones',3000,200,'2022-8-15');
Query OK, 1 row affected (0.43 sec)

mysql> insert into index_company values(3,'jars',5000,300,'2022-8-15');
Query OK, 1 row affected (0.45 sec)

mysql> insert into index_company values(4,'grinder',45000,590,curdate());
Query OK, 1 row affected (0.09 sec)

mysql> insert into index_company values(5,'cooler',12000,400,'2021-10-16');
Query OK, 1 row affected (0.47 sec)

mysql> select *from index_company;
+------------+--------------+---------------+--------+--------------------+
| product_id | product_name | psellingprice | profit | manufacturing_date |
+------------+--------------+---------------+--------+--------------------+
|          1 | saop         |            30 |      3 | 2022-11-30         |
|          2 | earphones    |          3000 |    200 | 2022-08-15         |
|          3 | jars         |          5000 |    300 | 2022-08-15         |
|          4 | grinder      |         45000 |    590 | 2022-11-30         |
|          5 | cooler       |         12000 |    400 | 2021-10-16         |
+------------+--------------+---------------+--------+--------------------+
5 rows in set (0.00 sec)

mysql> update index_company set product_name='mixi' where product_id=1;
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update index_company set psellingprice=10000 where product_id=1;
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update index_company set profit=500 where product_id=1;
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from index_company;
+------------+--------------+---------------+--------+--------------------+
| product_id | product_name | psellingprice | profit | manufacturing_date |
+------------+--------------+---------------+--------+--------------------+
|          1 | mixi         |         10000 |    500 | 2022-11-30         |
|          2 | earphones    |          3000 |    200 | 2022-08-15         |
|          3 | jars         |          5000 |    300 | 2022-08-15         |
|          4 | grinder      |         45000 |    590 | 2022-11-30         |
|          5 | cooler       |         12000 |    400 | 2021-10-16         |
+------------+--------------+---------------+--------+--------------------+
5 rows in set (0.00 sec)

mysql> select max(psellingprice) from index_company;
+--------------------+
| max(psellingprice) |
+--------------------+
|              45000 |
+--------------------+
1 row in set (0.00 sec)

mysql> select avg(psellingprice) from index_company;
+--------------------+
| avg(psellingprice) |
+--------------------+
|         15000.0000 |
+--------------------+
1 row in set (0.00 sec)

mysql> select product_name,max(psellingprice) from index_company;
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'company.index_company.product_name'; this is incompatible with sql_mode=only_full_group_by
mysql> select product_name,max(psellingprice) from index_company group by product_name;
+--------------+--------------------+
| product_name | max(psellingprice) |
+--------------+--------------------+
| mixi         |              10000 |
| earphones    |               3000 |
| jars         |               5000 |
| grinder      |              45000 |
| cooler       |              12000 |
+--------------+--------------------+
5 rows in set (0.00 sec)

mysql> select product_name,max(psellingprice) from index_company group by product_name;
+--------------+--------------------+
| product_name | max(psellingprice) |
+--------------+--------------------+
| mixi         |              10000 |
| earphones    |               3000 |
| jars         |               5000 |
| grinder      |              45000 |
| cooler       |              12000 |
+--------------+--------------------+
5 rows in set (0.00 sec)

mysql> select product_name,psellingprice from index_company where psellingprice=(select max(psellingprice) from index_company);
+--------------+---------------+
| product_name | psellingprice |
+--------------+---------------+
| grinder      |         45000 |
+--------------+---------------+
1 row in set (0.00 sec)

mysql> select product_name,psellingprice from index_company where psellingprice=(select max(psellingprice) from index_company where psellingprice=(sel
ect max(psellingprice) from index_company where psellingprice=(select max(psellingprice) from index_company)));
+--------------+---------------+
| product_name | psellingprice |
+--------------+---------------+
| grinder      |         45000 |
+--------------+---------------+
1 row in set (0.01 sec)

mysql> select product_name,psellingprice from index_company where psellingprice=(select max(psellingprice) from index_company where psellingprice=(select max(psellingprice) from index_company where psellingprice=(select max(psellingprice) from index_company where psellingprice=(select max(psellingprice) from index_company))));
+--------------+---------------+
| product_name | psellingprice |
+--------------+---------------+
| grinder      |         45000 |
+--------------+---------------+
1 row in set (0.00 sec)

mysql> select product_name,psellingprice from index_company where psellingprice=(select max(psellingprice) from index_company where psellingprice=(select max(psellingprice) from index_company where psellingprice=(select max(psellingprice) from index_company)));
+--------------+---------------+
| product_name | psellingprice |
+--------------+---------------+
| grinder      |         45000 |
+--------------+---------------+
1 row in set (0.00 sec)

mysql> select product_name,psellingprice from index_company where psellingprice=(select max(psellingprice) from index_company where psellingprice=(select max(psellingprice) from index_company where psellingprice=(select max(psellingprice) from index_company)));
+--------------+---------------+
| product_name | psellingprice |
+--------------+---------------+
| grinder      |         45000 |
+--------------+---------------+
1 row in set (0.00 sec)

mysql> select *from index_company;
+------------+--------------+---------------+--------+--------------------+
| product_id | product_name | psellingprice | profit | manufacturing_date |
+------------+--------------+---------------+--------+--------------------+
|          1 | mixi         |         10000 |    500 | 2022-11-30         |
|          2 | earphones    |          3000 |    200 | 2022-08-15         |
|          3 | jars         |          5000 |    300 | 2022-08-15         |
|          4 | grinder      |         45000 |    590 | 2022-11-30         |
|          5 | cooler       |         12000 |    400 | 2021-10-16         |
+------------+--------------+---------------+--------+--------------------+
5 rows in set (0.00 sec)

mysql> select max(product_name) from index_company;
+-------------------+
| max(product_name) |
+-------------------+
| mixi              |
+-------------------+
1 row in set (0.00 sec)

mysql> select product_name from index_company where product_name=(select max(product_name) from index_company where product_name=(select max(prduct_name) from index_company ));
ERROR 1054 (42S22): Unknown column 'prduct_name' in 'field list'
mysql> select product_name from index_company where product_name=(select max(product_name) from index_company where product_name=(select max(product_name) from index_company ));
+--------------+
| product_name |
+--------------+
| mixi         |
+--------------+
1 row in set (0.00 sec)

mysql> select product_name from index_company where product_name=(select max(product_name) from index_company where product_name=(select max(product_name) from index_company ));
+--------------+
| product_name |
+--------------+
| mixi         |
+--------------+
1 row in set (0.00 sec)

mysql> select product_name from index_company where product_name=(select max(product_name) from index_company where product_name<(select max(product_name) from index_company ));
+--------------+
| product_name |
+--------------+
| jars         |
+--------------+
1 row in set (0.01 sec)

mysql> select product_name,psellingprice from index_company where psellingprice=(select max(psellingprice) from index_company where psellingprice<(select max(psellingprice) from index_company where psellingprice<(select max(psellingprice) from index_company)));
+--------------+---------------+
| product_name | psellingprice |
+--------------+---------------+
| mixi         |         10000 |
+--------------+---------------+
1 row in set (0.00 sec)

mysql> select product_name,psellingprice from index_company where psellingprice=(select min(psellingprice) from index_company where psellingprice>(select min(psellingprice) from index_company where psellingprice>(select min(psellingprice) from index_company)));
+--------------+---------------+
| product_name | psellingprice |
+--------------+---------------+
| mixi         |         10000 |
+--------------+---------------+
1 row in set (0.00 sec)

mysql> select product_name,psellingprice from index_company where psellingprice=(select min(psellingprice) from index_company where psellingprice>(select min(psellingprice) from index_company where psellingprice>(select min(psellingprice) from index_company where psellingprice>(select min(psellingprice) from index_company))));
+--------------+---------------+
| product_name | psellingprice |
+--------------+---------------+
| cooler       |         12000 |
+--------------+---------------+
1 row in set (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| CSESEC4            |
| E2CSE4             |
| bakery             |
| company            |
| example            |
| information_schema |
| lab                |
| lab1               |
| linuxhint          |
| meghana            |
| mysql              |
| performance_schema |
| std                |
| sys                |
| tcl                |
+--------------------+
15 rows in set (0.00 sec)

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
3 rows in set (0.00 sec)

mysql> select *from customers;
+------+----------+---------+--------+------+------------+----------+
| cnum | cname    | city    | rating | snum | odate      | otime    |
+------+----------+---------+--------+------+------------+----------+
| 2001 | hoffman  | london  |    100 | 1001 | 2022-11-30 | 06:56:40 |
| 2002 | giovance | rome    |    200 | 1003 | 2022-11-30 | 06:56:40 |
| 2003 | lice     | sanjose |    300 | 1002 | 2022-11-30 | 06:56:40 |
| 2004 | grass    | brelin  |    100 | 1002 | 2022-11-30 | 06:56:40 |
| 2006 | clemens  | london  |    300 | 1007 | 2022-11-30 | 06:56:40 |
| 2007 | pereira  | rome    |    100 | 1004 | 2022-11-30 | 06:56:40 |
+------+----------+---------+--------+------+------------+----------+
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

mysql> select snum,sname from customers where snum=(select snum from salespeople where salespeople.snum=customers.snum);
ERROR 1054 (42S22): Unknown column 'sname' in 'field list'
mysql> select snum,cname from customers where snum=(select snum from salespeople where salespeople.snum=customers.snum);
+------+----------+
| snum | cname    |
+------+----------+
| 1001 | hoffman  |
| 1003 | giovance |
| 1002 | lice     |
| 1002 | grass    |
| 1007 | clemens  |
| 1004 | pereira  |
+------+----------+
6 rows in set (0.01 sec)

mysql> select cname from customers where cname like a%;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%' at line 1
mysql> select cname like a% from customers;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '% from customers' at line 1
mysql> select *from customers where cname like a%;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%' at line 1
mysql> select *from customers where cname like 'a%';
Empty set (0.00 sec)

mysql> select *from customers where cname like 'h%';
+------+---------+--------+--------+------+------------+----------+
| cnum | cname   | city   | rating | snum | odate      | otime    |
+------+---------+--------+--------+------+------------+----------+
| 2001 | hoffman | london |    100 | 1001 | 2022-11-30 | 06:56:40 |
+------+---------+--------+--------+------+------------+----------+
1 row in set (0.00 sec)

mysql> select *from customers where cname like 'h%' and g%;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> select *from customers where cname like 'h%' and 'g%';
Empty set, 1 warning (0.00 sec)

mysql> select *from customers where cname like 'g%';
+------+----------+--------+--------+------+------------+----------+
| cnum | cname    | city   | rating | snum | odate      | otime    |
+------+----------+--------+--------+------+------------+----------+
| 2002 | giovance | rome   |    200 | 1003 | 2022-11-30 | 06:56:40 |
| 2004 | grass    | brelin |    100 | 1002 | 2022-11-30 | 06:56:40 |
+------+----------+--------+--------+------+------------+----------+
2 rows in set (0.00 sec)

mysql> select *from customers where cname like 'g%' and 'h%';
Empty set, 1 warning (0.00 sec)

mysql> select cname from customers where cname=(select cname like 'g%');
+---------+
| cname   |
+---------+
| hoffman |
| lice    |
| clemens |
| pereira |
+---------+
4 rows in set, 6 warnings (0.00 sec)

mysql> select cname from customers where city in('sanjose' or 'london');
+----------+
| cname    |
+----------+
| hoffman  |
| giovance |
| lice     |
| grass    |
| clemens  |
| pereira  |
+----------+
6 rows in set, 8 warnings (0.00 sec)

mysql> select cname from customers where city in('sanjose' and 'london');
+----------+
| cname    |
+----------+
| hoffman  |
| giovance |
| lice     |
| grass    |
| clemens  |
| pereira  |
+----------+
6 rows in set, 7 warnings (0.00 sec)

mysql> select cname from customers where city='sanjose';
+-------+
| cname |
+-------+
| lice  |
+-------+
1 row in set (0.00 sec)

mysql> select cname from customers where city=(select city from customers where city='sanjose' or city='clemens');
+-------+
| cname |
+-------+
| lice  |
+-------+
1 row in set (0.00 sec)

mysql> select cname from customers where city=(select city from customers where city='sanjose' and  city='clemens');
Empty set (0.00 sec)

mysql> select cname from customers where city=(select city from customers where city='sanjose' and  city='london');
Empty set (0.00 sec)

mysql> select cname from customers where city=(select city from customers where city='sanjose' or  city='london');
ERROR 1242 (21000): Subquery returns more than 1 row
mysql> select cname from customers where city in 'sanjose' or 'london';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''sanjose' or 'london'' at line 1
mysql> select cname,city from customers where city='sanjose' or city='london';
+---------+---------+
| cname   | city    |
+---------+---------+
| hoffman | london  |
| lice    | sanjose |
| clemens | london  |
+---------+---------+
3 rows in set (0.00 sec)

mysql> select cname,city from customers where city='sanjose' and rating=100;
Empty set (0.00 sec)

mysql> select cname,city from customers where city='sanjose' and rating=300;
+-------+---------+
| cname | city    |
+-------+---------+
| lice  | sanjose |
+-------+---------+
1 row in set (0.00 sec)

mysql> select cname,city from customers where city in sanjose or london;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'sanjose or london' at line 1
mysql> select cname,city from customers where city in('sanjose' or 'london');;
+----------+---------+
| cname    | city    |
+----------+---------+
| hoffman  | london  |
| giovance | rome    |
| lice     | sanjose |
| grass    | brelin  |
| clemens  | london  |
| pereira  | rome    |
+----------+---------+
6 rows in set, 8 warnings (0.00 sec)

ERROR: 
No query specified

mysql> select cname,city from customers where city in('sanjose' or 'london');
+----------+---------+
| cname    | city    |
+----------+---------+
| hoffman  | london  |
| giovance | rome    |
| lice     | sanjose |
| grass    | brelin  |
| clemens  | london  |
| pereira  | rome    |
+----------+---------+
6 rows in set, 8 warnings (0.00 sec)

mysql> select cname,city from customers where city in('sanjose' and 'london');
+----------+---------+
| cname    | city    |
+----------+---------+
| hoffman  | london  |
| giovance | rome    |
| lice     | sanjose |
| grass    | brelin  |
| clemens  | london  |
| pereira  | rome    |
+----------+---------+
6 rows in set, 7 warnings (0.00 sec)

mysql> select cname,city from customers where city in(select city ='london' or city='sanjose');
+----------+--------+
| cname    | city   |
+----------+--------+
| giovance | rome   |
| grass    | brelin |
| pereira  | rome   |
+----------+--------+
3 rows in set, 6 warnings (0.00 sec)
mysql> use bakery;
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


mysql> select *from customers;
+------+----------+---------+--------+------+------------+
| cnum | cname    | city    | rating | snum | odate      |
+------+----------+---------+--------+------+------------+
| 2001 | hoffman  | london  |    100 | 1001 | 2022-11-30 |
| 2002 | giovance | rome    |    200 | 1003 | 2022-11-30 |
| 2003 | lice     | sanjose |    300 | 1002 | 2022-11-30 |
| 2004 | grass    | brelin  |    100 | 1002 | 2022-11-30 |
| 2006 | clemens  | london  |    300 | 1007 | 2022-11-30 |
| 2007 | pereira  | rome    |    100 | 1004 | 2022-11-30 |
+------+----------+---------+--------+------+------------+
6 rows in set (0.00 sec)

mysql> alter table customers add otime time;
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from customers;
+------+----------+---------+--------+------+------------+-------+
| cnum | cname    | city    | rating | snum | odate      | otime |
+------+----------+---------+--------+------+------------+-------+
| 2001 | hoffman  | london  |    100 | 1001 | 2022-11-30 | NULL  |
| 2002 | giovance | rome    |    200 | 1003 | 2022-11-30 | NULL  |
| 2003 | lice     | sanjose |    300 | 1002 | 2022-11-30 | NULL  |
| 2004 | grass    | brelin  |    100 | 1002 | 2022-11-30 | NULL  |
| 2006 | clemens  | london  |    300 | 1007 | 2022-11-30 | NULL  |
| 2007 | pereira  | rome    |    100 | 1004 | 2022-11-30 | NULL  |
+------+----------+---------+--------+------+------------+-------+
6 rows in set (0.00 sec)

mysql> update customers set otime=(select curtime());
Query OK, 6 rows affected (0.08 sec)
Rows matched: 6  Changed: 6  Warnings: 0

mysql> select *from customers;
+------+----------+---------+--------+------+------------+----------+
| cnum | cname    | city    | rating | snum | odate      | otime    |
+------+----------+---------+--------+------+------------+----------+
| 2001 | hoffman  | london  |    100 | 1001 | 2022-11-30 | 06:56:40 |
| 2002 | giovance | rome    |    200 | 1003 | 2022-11-30 | 06:56:40 |
| 2003 | lice     | sanjose |    300 | 1002 | 2022-11-30 | 06:56:40 |
| 2004 | grass    | brelin  |    100 | 1002 | 2022-11-30 | 06:56:40 |
| 2006 | clemens  | london  |    300 | 1007 | 2022-11-30 | 06:56:40 |
| 2007 | pereira  | rome    |    100 | 1004 | 2022-11-30 | 06:56:40 |
+------+----------+---------+--------+------+------------+----------+
6 rows in set (0.00 sec)


