sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 174
Server version: 8.0.30-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use std;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select *from student;
+-------+---------+----------+
| stdid | stdname | stdmarks |
+-------+---------+----------+
|     1 | meghana |       95 |
|     2 | anusha  |       85 |
|     3 | asritha |       75 |
+-------+---------+----------+
3 rows in set (0.00 sec)

mysql> select stdid,stdmarks from student where stdmarks=(select max(stdmarks) from student);
+-------+----------+
| stdid | stdmarks |
+-------+----------+
|     1 |       95 |
+-------+----------+
1 row in set (0.00 sec)

mysql> select stdid,stdmarks from student where stdmarks=(select max(stdmarks) from student where stdmarks=(select max(stdmarks) from student));
+-------+----------+
| stdid | stdmarks |
+-------+----------+
|     1 |       95 |
+-------+----------+
1 row in set (0.00 sec)

mysql> select stdid,stdmarks from student where stdmarks=(select max(stdmarks) from student where stdmarks<(select max(stdmarks) from student));
+-------+----------+
| stdid | stdmarks |
+-------+----------+
|     2 |       85 |
+-------+----------+
1 row in set (0.00 sec)

mysql> select stdid,stdmarks from student where stdmarks=(select min(stdmarks) from student);
+-------+----------+
| stdid | stdmarks |
+-------+----------+
|     3 |       75 |
+-------+----------+
1 row in set (0.00 sec)

mysql> select stdid,stdmarks from student where stdmarks=(select min(stdmarks) from student where stdmarks>(select min(stdmarks) from student));
+-------+----------+
| stdid | stdmarks |
+-------+----------+
|     2 |       85 |
+-------+----------+
1 row in set (0.00 sec)

mysql> select *from student;
+-------+---------+----------+
| stdid | stdname | stdmarks |
+-------+---------+----------+
|     1 | meghana |       95 |
|     2 | anusha  |       85 |
|     3 | asritha |       75 |
+-------+---------+----------+
3 rows in set (0.00 sec)

mysql> select stdid from student where stdid=(select max(sid) from student);
ERROR 1054 (42S22): Unknown column 'sid' in 'field list'
mysql> select stdid from student where stdid=(select max(stdid) from student);
+-------+
| stdid |
+-------+
|     3 |
+-------+
1 row in set (0.00 sec)

mysql> select stdid from student where stdid=(select min(stdid) from student);
+-------+
| stdid |
+-------+
|     1 |
+-------+
1 row in set (0.00 sec)

mysql> select stdid,stdmarks from student where stdmarks=(select avg(stdmarks) from student);
+-------+----------+
| stdid | stdmarks |
+-------+----------+
|     2 |       85 |
+-------+----------+
1 row in set (0.00 sec)

mysql> select stdid,stdmarks from student where stdmarks=(select min(stdmarks) from student where stdmarks>(select min(stdmarks) from student where stdmarks=(select min(stdmarks) from student)));
+-------+----------+
| stdid | stdmarks |
+-------+----------+
|     2 |       85 |
+-------+----------+
1 row in set (0.00 sec)
mysql> select stdid,stdmarks from student where stdmarks=(select max(stdmarks) from student where stdmarks<(select max(stdmarks) from student where stdmarks<(select max(stdmarks) from student)));
+-------+----------+
| stdid | stdmarks |
+-------+----------+
|     3 |       75 |
+-------+----------+
1 row in set (0.00 sec)

mysql> select stdid from student where stdmarks=(select max(stdmarks) from student where stdmarks<(select max(stdmarks) from student));
+-------+
| stdid |
+-------+
|     2 |
+-------+
1 row in set (0.00 sec)

mysql> alter table student add eid int first;
Query OK, 0 rows affected (0.28 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from student;
+------+-------+---------+----------+
| eid  | stdid | stdname | stdmarks |
+------+-------+---------+----------+
| NULL |     1 | meghana |       95 |
| NULL |     2 | anusha  |       85 |
| NULL |     3 | asritha |       75 |
+------+-------+---------+----------+
3 rows in set (0.00 sec)

mysql> alter table student add eid int after stdname;
ERROR 1060 (42S21): Duplicate column name 'eid'
mysql> alter table student add cid int after stdname;
Query OK, 0 rows affected (0.26 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from student;
+------+-------+---------+------+----------+
| eid  | stdid | stdname | cid  | stdmarks |
+------+-------+---------+------+----------+
| NULL |     1 | meghana | NULL |       95 |
| NULL |     2 | anusha  | NULL |       85 |
| NULL |     3 | asritha | NULL |       75 |
+------+-------+---------+------+----------+
3 rows in set (0.00 sec)

mysql> alter table student drop eid;
Query OK, 0 rows affected (0.37 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from student;
+-------+---------+------+----------+
| stdid | stdname | cid  | stdmarks |
+-------+---------+------+----------+
|     1 | meghana | NULL |       95 |
|     2 | anusha  | NULL |       85 |
|     3 | asritha | NULL |       75 |
+-------+---------+------+----------+
3 rows in set (0.00 sec)

mysql> alter table student drop cid;
Query OK, 0 rows affected (0.26 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from student;
+-------+---------+----------+
| stdid | stdname | stdmarks |
+-------+---------+----------+
|     1 | meghana |       95 |
|     2 | anusha  |       85 |
|     3 | asritha |       75 |
+-------+---------+----------+
mysql> select idno,name from CSE4 where age=(select max(18) from CSE4);
+------+------+
| idno | name |
+------+------+
|    1 | a    |
|    2 | b    |
|    7 | g    |
|    8 | h    |
|    9 | i    |
|   10 | j    |
|   11 | k    |
|   12 | l    |
|   13 | m    |
|   14 | n    |
|   15 | o    |
|   16 | p    |
|   17 | q    |
|   18 | r    |
|   20 | t    |
|   21 | u    |
|   22 | v    |
|   23 | w    |
|   24 | x    |
|   25 | y    |
|   25 | y    |
|   40 | qo   |
|   41 | ty   |
|   42 | nr   |
|   43 | nt   |
|   44 | bg   |
|   45 | kj   |
|   46 | gj   |
|   47 | gh   |
|   48 | nk   |
|   49 | ni   |
|   50 | bh   |
|   51 | ut   |
|   52 | op   |
|   53 | ye   |
|   54 | mn   |
|   55 | lq   |
|   56 | tr   |
|   57 | er   |
|   58 | ko   |
|   59 | nb   |
|   60 | ku   |
|   61 | nw   |
|   62 | uq   |
|   63 | xd   |
|   64 | tq   |
|   65 | mv   |
|   67 | rv   |
|   68 | ol   |
|   69 | ms   |
|   70 | mk   |
|   71 | lp   |
|   72 | pd   |
|   73 | pk   |
|   74 | yq   |
|   75 | ds   |
|   76 | as   |
|   77 | df   |
|   78 | ko   |
|   79 | we   |
|   80 | lq   |
+------+------+
61 rows in set (0.00 sec)
mysql> select count(stdid),stdname from student group by stdname;
+--------------+---------+
| count(stdid) | stdname |
+--------------+---------+
|            1 | meghana |
|            1 | anusha  |
|            1 | asritha |
|            1 | sai     |
|            1 | teja    |
|            1 | rama    |
|            1 | prassu  |
|            1 | pandu   |
|            1 | nandu   |
|            1 | shasmi  |
+--------------+---------+
10 rows in set (0.00 sec)

mysql> select sum(stdid),stdname from student group by stdname;
+------------+---------+
| sum(stdid) | stdname |
+------------+---------+
|          1 | meghana |
|          2 | anusha  |
|          3 | asritha |
|          4 | sai     |
|          5 | teja    |
|          6 | rama    |
|          7 | prassu  |
|          8 | pandu   |
|          9 | nandu   |
|         10 | shasmi  |
+------------+---------+
10 rows in set (0.00 sec)

mysql> select count(*) from student;
+----------+
| count(*) |
+----------+
|       10 |
+----------+
1 row in set (0.00 sec)

mysql> select count(stdid),stdname from student group by stdname;
+--------------+---------+
| count(stdid) | stdname |
+--------------+---------+
|            1 | meghana |
|            1 | anusha  |
|            1 | asritha |
|            1 | sai     |
|            1 | teja    |
|            1 | rama    |
|            1 | prassu  |
|            1 | pandu   |
|            1 | nandu   |
|            1 | shasmi  |
+--------------+---------+
10 rows in set (0.00 sec)

mysql> select sum(stdid),stdname from student group by stdname;
+------------+---------+
| sum(stdid) | stdname |
+------------+---------+
|          1 | meghana |
|          2 | anusha  |
|          3 | asritha |
|          4 | sai     |
|          5 | teja    |
|          6 | rama    |
|          7 | prassu  |
|          8 | pandu   |
|          9 | nandu   |
|         10 | shasmi  |
+------------+---------+
10 rows in set (0.00 sec)

mysql> select count(*) from student;
+----------+
| count(*) |
+----------+
|       10 |
+----------+
1 row in set (0.00 sec)

wh

