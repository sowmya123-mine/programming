Database changed
mysql> show tables;
+-------------------+
| Tables_in_example |
+-------------------+
| megha             |
| sai               |
+-------------------+
2 rows in set (0.00 sec)


mysql> select strcmp("str","str");
+---------------------+
| strcmp("str","str") |
+---------------------+
|                   0 |
+---------------------+
1 row in set (0.00 sec)

mysql> select length("meghana");
+-------------------+
| length("meghana") |
+-------------------+
|                 7 |
+-------------------+
1 row in set (0.00 sec)

mysql> select substring("meghana",2,2);
+--------------------------+
| substring("meghana",2,2) |
+--------------------------+
| eg                       |
+--------------------------+
1 row in set (0.00 sec)

mysql> select substring("meghana",2,3);
+--------------------------+
| substring("meghana",2,3) |
+--------------------------+
| egh                      |
+--------------------------+
1 row in set (0.00 sec)

mysql> select substring("meghana",1,3);
+--------------------------+
| substring("meghana",1,3) |
+--------------------------+
| meg                      |
+--------------------------+
1 row in set (0.00 sec)

mysql> select instr("megha","eg");
+---------------------+
| instr("megha","eg") |
+---------------------+
|                   2 |
+---------------------+
1 row in set (0.00 sec)

mysql> select round(5.04);
+-------------+
| round(5.04) |
+-------------+
|           5 |
+-------------+
1 row in set (0.00 sec)

mysql> select mod(7,2);
+----------+
| mod(7,2) |
+----------+
|        1 |
+----------+
1 row in set (0.00 sec)

mysql> select power(2,4);
+------------+
| power(2,4) |
+------------+
|         16 |
+------------+
1 row in set (0.00 sec)

mysql> select ceil(4.34);
+------------+
| ceil(4.34) |
+------------+
|          5 |
+------------+
1 row in set (0.00 sec)

mysql> select floor(4.34);
+-------------+
| floor(4.34) |
+-------------+
|           4 |
+-------------+
1 row in set (0.00 sec)

mysql> select sign(5);
+---------+
| sign(5) |
+---------+
|       1 |
+---------+
1 row in set (0.00 sec)

mysql> select sqrt(2);
+--------------------+
| sqrt(2)            |
+--------------------+
| 1.4142135623730951 |
+--------------------+
1 row in set (0.00 sec)

mysql> use std;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+---------------+
| Tables_in_std |
+---------------+
| dad           |
| megha         |
| sai           |
| student       |
+---------------+
4 rows in set (0.00 sec)

mysql> select *from megha;
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

mysql> select stdid from megha limit 1;
+-------+
| stdid |
+-------+
|     1 |
+-------+
1 row in set (0.01 sec)

mysql> select stdid from megha limit 5;
+-------+
| stdid |
+-------+
|     1 |
|     2 |
|     3 |
|     4 |
|     5 |
+-------+
5 rows in set (0.00 sec)

mysql> select stdid from megha order by stdid desc limit 1;
+-------+
| stdid |
+-------+
|    10 |
+-------+

