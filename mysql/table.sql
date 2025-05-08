 sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 25
Server version: 8.0.30-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use family;
ERROR 1049 (42000): Unknown database 'family'
mysql> use bro;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select *from family;
+-----+---------+------+------+-------+
| eid | ename   | age  | sex  | happy |
+-----+---------+------+------+-------+
| 1   | meghana |   24 | m    | yes   |
| 2   | sai     |   25 | m    | yes   |
| 3   | prabha  |   38 | f    | yes   |
| 4   | paandu  |   40 | m    | yes   |
+-----+---------+------+------+-------+
4 rows in set (0.00 sec)

mysql> update family set happy='no' where sex='f';
Query OK, 1 row affected (0.53 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from family;
+-----+---------+------+------+-------+
| eid | ename   | age  | sex  | happy |
+-----+---------+------+------+-------+
| 1   | meghana |   24 | m    | yes   |
| 2   | sai     |   25 | m    | yes   |
| 3   | prabha  |   38 | f    | no    |
| 4   | paandu  |   40 | m    | yes   |
+-----+---------+------+------+-------+
4 rows in set (0.00 sec)

mysql> update family set happy='yes' where ename='prabha';
Query OK, 1 row affected (0.44 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from family;
+-----+---------+------+------+-------+
| eid | ename   | age  | sex  | happy |
+-----+---------+------+------+-------+
| 1   | meghana |   24 | m    | yes   |
| 2   | sai     |   25 | m    | yes   |
| 3   | prabha  |   38 | f    | yes   |
| 4   | paandu  |   40 | m    | yes   |
+-----+---------+------+------+-------+
4 rows in set (0.00 sec)

mysql> 


