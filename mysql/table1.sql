 sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 24
Server version: 8.0.30-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use bro;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> -a;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-a' at line 1
mysql> show tables;
+---------------+
| Tables_in_bro |
+---------------+
| emp           |
+---------------+
1 row in set (0.00 sec)

mysql> desc emp;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | varchar(8)  | NO   | PRI | NULL    |       |
| ename | varchar(30) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
| sex   | varchar(1)  | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> select *from student;
ERROR 1146 (42S02): Table 'bro.student' doesn't exist
mysql> select *emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'emp' at line 1
mysql> select * from emp;
+-----+---------+------+------+
| eid | ename   | age  | sex  |
+-----+---------+------+------+
| 1   | meghana |   24 | m    |
| 2   | sai     |   25 | m    |
| 3   | prabha  |   38 | f    |
| 4   | paandu  |   40 | m    |
+-----+---------+------+------+
4 rows in set (0.00 sec)

mysql> alter table emp add height varchar(10) after sex;
Query OK, 0 rows affected (0.34 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| eid    | varchar(8)  | NO   | PRI | NULL    |       |
| ename  | varchar(30) | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
| sex    | varchar(1)  | YES  |     | NULL    |       |
| height | varchar(10) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> select *from emp;
+-----+---------+------+------+--------+
| eid | ename   | age  | sex  | height |
+-----+---------+------+------+--------+
| 1   | meghana |   24 | m    | NULL   |
| 2   | sai     |   25 | m    | NULL   |
| 3   | prabha  |   38 | f    | NULL   |
| 4   | paandu  |   40 | m    | NULL   |
+-----+---------+------+------+--------+
4 rows in set (0.00 sec)

mysql> insert into emp values(6);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> alter table emp add weight int(5) after height;
Query OK, 0 rows affected, 1 warning (0.69 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> insert into emp values('six');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> desc emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| eid    | varchar(8)  | NO   | PRI | NULL    |       |
| ename  | varchar(30) | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
| sex    | varchar(1)  | YES  |     | NULL    |       |
| height | varchar(10) | YES  |     | NULL    |       |
| weight | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> alter table emp modify height int(10);
Query OK, 4 rows affected, 1 warning (0.89 sec)
Records: 4  Duplicates: 0  Warnings: 1

mysql> desc emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| eid    | varchar(8)  | NO   | PRI | NULL    |       |
| ename  | varchar(30) | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
| sex    | varchar(1)  | YES  |     | NULL    |       |
| height | int         | YES  |     | NULL    |       |
| weight | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> alter table emp drop height;
Query OK, 0 rows affected (0.63 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| eid    | varchar(8)  | NO   | PRI | NULL    |       |
| ename  | varchar(30) | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
| sex    | varchar(1)  | YES  |     | NULL    |       |
| weight | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table emp drop primary key;
Query OK, 4 rows affected (1.13 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> desc emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| eid    | varchar(8)  | NO   |     | NULL    |       |
| ename  | varchar(30) | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
| sex    | varchar(1)  | YES  |     | NULL    |       |
| weight | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table emp add primary key(id);
ERROR 1072 (42000): Key column 'id' doesn't exist in table
mysql> alter table emp add primary key(eid);
Query OK, 0 rows affected (1.47 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| eid    | varchar(8)  | NO   | PRI | NULL    |       |
| ename  | varchar(30) | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
| sex    | varchar(1)  | YES  |     | NULL    |       |
| weight | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> alter table emp rename to family;
Query OK, 0 rows affected (0.73 sec)

mysql> show tables;
+---------------+
| Tables_in_bro |
+---------------+
| family        |
+---------------+
1 row in set (0.00 sec)

mysql> alter table family change weight happy varchar(50);
Query OK, 4 rows affected (0.78 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> desc family;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| eid   | varchar(8)  | NO   | PRI | NULL    |       |
| ename | varchar(30) | YES  |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
| sex   | varchar(1)  | YES  |     | NULL    |       |
| happy | varchar(50) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> select *from family;
+-----+---------+------+------+-------+
| eid | ename   | age  | sex  | happy |
+-----+---------+------+------+-------+
| 1   | meghana |   24 | m    | NULL  |
| 2   | sai     |   25 | m    | NULL  |
| 3   | prabha  |   38 | f    | NULL  |
| 4   | paandu  |   40 | m    | NULL  |
+-----+---------+------+------+-------+
4 rows in set (0.00 sec)

mysql> insert into family (happy) values(yes);
ERROR 1054 (42S22): Unknown column 'yes' in 'field list'
mysql> insert into family (age ,happy)values('yes',24);
ERROR 1366 (HY000): Incorrect integer value: 'yes' for column 'age' at row 1
mysql> insert into family (age,happy)values(24,'yes');
ERROR 1364 (HY000): Field 'eid' doesn't have a default value
mysql> update family set happy='yes' where happy=null;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select *from family;
+-----+---------+------+------+-------+
| eid | ename   | age  | sex  | happy |
+-----+---------+------+------+-------+
| 1   | meghana |   24 | m    | NULL  |
| 2   | sai     |   25 | m    | NULL  |
| 3   | prabha  |   38 | f    | NULL  |
| 4   | paandu  |   40 | m    | NULL  |
+-----+---------+------+------+-------+
4 rows in set (0.00 sec)

mysql> update family set happy='yes' where happy='null';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select *from family;
+-----+---------+------+------+-------+
| eid | ename   | age  | sex  | happy |
+-----+---------+------+------+-------+
| 1   | meghana |   24 | m    | NULL  |
| 2   | sai     |   25 | m    | NULL  |
| 3   | prabha  |   38 | f    | NULL  |
| 4   | paandu  |   40 | m    | NULL  |
+-----+---------+------+------+-------+
4 rows in set (0.00 sec)

mysql> update family set happy='yes';
Query OK, 4 rows affected (0.43 sec)
Rows matched: 4  Changed: 4  Warnings: 0

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

mysql> update family set happy='yes' where sex='f';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

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


