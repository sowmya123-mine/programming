sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 161
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
| CSESEC4            |
| E2CSE4             |
| bakery             |
| example            |
| information_schema |
| lab                |
| linuxhint          |
| meghana            |
| mysql              |
| performance_schema |
| sys                |
| tcl                |
+--------------------+
12 rows in set (0.00 sec)

mysql> use lab;
Database changed
mysql> create table rc1(sid varchar(10),sname char(20),age int,sphno varchar(20),bloodgrp varchar(20));
Query OK, 0 rows affected (0.35 sec)

mysql> insert into rc1 values('o191041','meghana',18,9705105900,'A+');
Query OK, 1 row affected (0.07 sec)

mysql> insert into rc1 values('o191052','vaishnavi',18,7997265724,'O-');
Query OK, 1 row affected (0.47 sec)

mysql> insert into rc1 values('o191021','rajeshwari',18,9763563578,'B+');
Query OK, 1 row affected (0.07 sec)

mysql> insert into rc1 values('o191042','bhavani',18,8727671636,'O+');
Query OK, 1 row affected (0.08 sec)

mysql> insert into rc1 values('o191040','lavanya',18,9826536236,'O+');
Query OK, 1 row affected (0.47 sec)

mysql> insert into rc1 values('o191018','maheswari',18,9872533646,'A+');
Query OK, 1 row affected (0.07 sec)

mysql> insert into rc1 values('o190728','anusha',18,7416009992,'O+');
Query OK, 1 row affected (0.07 sec)

mysql> insert into rc1 values('o191053','jyothi',18,9881273321,'B+');
Query OK, 1 row affected (0.46 sec)

mysql> insert into rc1 values('o191058','mounika',18,96405097262,'O+');
Query OK, 1 row affected (0.07 sec)

mysql> insert into rc1 values('o191044','yazna',18,9826556235,'B+');
Query OK, 1 row affected (0.07 sec)

mysql> select *from rc1;
+---------+------------+------+-------------+----------+
| sid     | sname      | age  | sphno       | bloodgrp |
+---------+------------+------+-------------+----------+
| o191041 | meghana    |   18 | 9705105900  | A+       |
| o191052 | vaishnavi  |   18 | 7997265724  | O-       |
| o191021 | rajeshwari |   18 | 9763563578  | B+       |
| o191042 | bhavani    |   18 | 8727671636  | O+       |
| o191040 | lavanya    |   18 | 9826536236  | O+       |
| o191018 | maheswari  |   18 | 9872533646  | A+       |
| o190728 | anusha     |   18 | 7416009992  | O+       |
| o191053 | jyothi     |   18 | 9881273321  | B+       |
| o191058 | mounika    |   18 | 96405097262 | O+       |
| o191044 | yazna      |   18 | 9826556235  | B+       |
+---------+------------+------+-------------+----------+
10 rows in set (0.00 sec)

mysql> alter table rc1 add(sno int);
Query OK, 0 rows affected (0.26 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from rc1;
+---------+------------+------+-------------+----------+------+
| sid     | sname      | age  | sphno       | bloodgrp | sno  |
+---------+------------+------+-------------+----------+------+
| o191041 | meghana    |   18 | 9705105900  | A+       | NULL |
| o191052 | vaishnavi  |   18 | 7997265724  | O-       | NULL |
| o191021 | rajeshwari |   18 | 9763563578  | B+       | NULL |
| o191042 | bhavani    |   18 | 8727671636  | O+       | NULL |
| o191040 | lavanya    |   18 | 9826536236  | O+       | NULL |
| o191018 | maheswari  |   18 | 9872533646  | A+       | NULL |
| o190728 | anusha     |   18 | 7416009992  | O+       | NULL |
| o191053 | jyothi     |   18 | 9881273321  | B+       | NULL |
| o191058 | mounika    |   18 | 96405097262 | O+       | NULL |
| o191044 | yazna      |   18 | 9826556235  | B+       | NULL |
+---------+------------+------+-------------+----------+------+
10 rows in set (0.01 sec)
mysql> alter table rc1 modify sno char(10);
Query OK, 10 rows affected (1.12 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select *from rc1;
+---------+------------+------+-------------+----------+------+
| sid     | sname      | age  | sphno       | bloodgrp | sno  |
+---------+------------+------+-------------+----------+------+
| o191041 | meghana    |   18 | 9705105900  | A+       | NULL |
| o191052 | vaishnavi  |   18 | 7997265724  | O-       | NULL |
| o191021 | rajeshwari |   18 | 9763563578  | B+       | NULL |
| o191042 | bhavani    |   18 | 8727671636  | O+       | NULL |
| o191040 | lavanya    |   18 | 9826536236  | O+       | NULL |
| o191018 | maheswari  |   18 | 9872533646  | A+       | NULL |
| o190728 | anusha     |   18 | 7416009992  | O+       | NULL |
| o191053 | jyothi     |   18 | 9881273321  | B+       | NULL |
| o191058 | mounika    |   18 | 96405097262 | O+       | NULL |
| o191044 | yazna      |   18 | 9826556235  | B+       | NULL |
+---------+------------+------+-------------+----------+------+
10 rows in set (0.00 sec)

mysql> alter table rc1 drop sno;
Query OK, 0 rows affected (0.67 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from rc1;
+---------+------------+------+-------------+----------+
| sid     | sname      | age  | sphno       | bloodgrp |
+---------+------------+------+-------------+----------+
| o191041 | meghana    |   18 | 9705105900  | A+       |
| o191052 | vaishnavi  |   18 | 7997265724  | O-       |
| o191021 | rajeshwari |   18 | 9763563578  | B+       |
| o191042 | bhavani    |   18 | 8727671636  | O+       |
| o191040 | lavanya    |   18 | 9826536236  | O+       |
| o191018 | maheswari  |   18 | 9872533646  | A+       |
| o190728 | anusha     |   18 | 7416009992  | O+       |
| o191053 | jyothi     |   18 | 9881273321  | B+       |
| o191058 | mounika    |   18 | 96405097262 | O+       |
| o191044 | yazna      |   18 | 9826556235  | B+       |
+---------+------------+------+-------------+----------+
10 rows in set (0.00 sec)

mysql> alter table rc1 rename to record1;
Query OK, 0 rows affected (0.74 sec)

mysql> select *from record1;
+---------+------------+------+-------------+----------+
| sid     | sname      | age  | sphno       | bloodgrp |
+---------+------------+------+-------------+----------+
| o191041 | meghana    |   18 | 9705105900  | A+       |
| o191052 | vaishnavi  |   18 | 7997265724  | O-       |
| o191021 | rajeshwari |   18 | 9763563578  | B+       |
| o191042 | bhavani    |   18 | 8727671636  | O+       |
| o191040 | lavanya    |   18 | 9826536236  | O+       |
| o191018 | maheswari  |   18 | 9872533646  | A+       |
| o190728 | anusha     |   18 | 7416009992  | O+       |
| o191053 | jyothi     |   18 | 9881273321  | B+       |
| o191058 | mounika    |   18 | 96405097262 | O+       |
| o191044 | yazna      |   18 | 9826556235  | B+       |
+---------+------------+------+-------------+----------+
10 rows in set (0.01 sec)

mysql> rename table record1 to rc1;
Query OK, 0 rows affected (0.24 sec)

mysql> select *from rc1;
+---------+------------+------+-------------+----------+
| sid     | sname      | age  | sphno       | bloodgrp |
+---------+------------+------+-------------+----------+
| o191041 | meghana    |   18 | 9705105900  | A+       |
| o191052 | vaishnavi  |   18 | 7997265724  | O-       |
| o191021 | rajeshwari |   18 | 9763563578  | B+       |
| o191042 | bhavani    |   18 | 8727671636  | O+       |
| o191040 | lavanya    |   18 | 9826536236  | O+       |
| o191018 | maheswari  |   18 | 9872533646  | A+       |
| o190728 | anusha     |   18 | 7416009992  | O+       |
| o191053 | jyothi     |   18 | 9881273321  | B+       |
| o191058 | mounika    |   18 | 96405097262 | O+       |
| o191044 | yazna      |   18 | 9826556235  | B+       |
+---------+------------+------+-------------+----------+
10 rows in set (0.01 sec)

mysql> insert into rc1 values('o28173','mwhghws',17,2364763476,'A+');
Query OK, 1 row affected (0.46 sec)

mysql> select *from rc1;
+---------+------------+------+-------------+----------+
| sid     | sname      | age  | sphno       | bloodgrp |
+---------+------------+------+-------------+----------+
| o191041 | meghana    |   18 | 9705105900  | A+       |
| o191052 | vaishnavi  |   18 | 7997265724  | O-       |
| o191021 | rajeshwari |   18 | 9763563578  | B+       |
| o191042 | bhavani    |   18 | 8727671636  | O+       |
| o191040 | lavanya    |   18 | 9826536236  | O+       |
| o191018 | maheswari  |   18 | 9872533646  | A+       |
| o190728 | anusha     |   18 | 7416009992  | O+       |
| o191053 | jyothi     |   18 | 9881273321  | B+       |
| o191058 | mounika    |   18 | 96405097262 | O+       |
| o191044 | yazna      |   18 | 9826556235  | B+       |
| o28173  | mwhghws    |   17 | 2364763476  | A+       |
+---------+------------+------+-------------+----------+
11 rows in set (0.00 sec)

mysql> delete from rc1 where sid='o28173';
Query OK, 1 row affected (0.46 sec)

mysql> select *from rc1;
+---------+------------+------+-------------+----------+
| sid     | sname      | age  | sphno       | bloodgrp |
+---------+------------+------+-------------+----------+
| o191041 | meghana    |   18 | 9705105900  | A+       |
| o191052 | vaishnavi  |   18 | 7997265724  | O-       |
| o191021 | rajeshwari |   18 | 9763563578  | B+       |
| o191042 | bhavani    |   18 | 8727671636  | O+       |
| o191040 | lavanya    |   18 | 9826536236  | O+       |
| o191018 | maheswari  |   18 | 9872533646  | A+       |
| o190728 | anusha     |   18 | 7416009992  | O+       |
| o191053 | jyothi     |   18 | 9881273321  | B+       |
| o191058 | mounika    |   18 | 96405097262 | O+       |
| o191044 | yazna      |   18 | 9826556235  | B+       |
+---------+------------+------+-------------+----------+
10 rows in set (0.00 sec)

mysql> alter table rc1 add(sno char(10));
Query OK, 0 rows affected (0.71 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from rc1;
+---------+------------+------+-------------+----------+------+
| sid     | sname      | age  | sphno       | bloodgrp | sno  |
+---------+------------+------+-------------+----------+------+
| o191041 | meghana    |   18 | 9705105900  | A+       | NULL |
| o191052 | vaishnavi  |   18 | 7997265724  | O-       | NULL |
| o191021 | rajeshwari |   18 | 9763563578  | B+       | NULL |
| o191042 | bhavani    |   18 | 8727671636  | O+       | NULL |
| o191040 | lavanya    |   18 | 9826536236  | O+       | NULL |
| o191018 | maheswari  |   18 | 9872533646  | A+       | NULL |
| o190728 | anusha     |   18 | 7416009992  | O+       | NULL |
| o191053 | jyothi     |   18 | 9881273321  | B+       | NULL |
| o191058 | mounika    |   18 | 96405097262 | O+       | NULL |
| o191044 | yazna      |   18 | 9826556235  | B+       | NULL |
+---------+------------+------+-------------+----------+------+
10 rows in set (0.00 sec)

mysql> drop from rc1 where sno='null';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from rc1 where sno='null'' at line 1
mysql> alter table rc1 drop sno;
Query OK, 0 rows affected (0.71 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from rc1;
+---------+------------+------+-------------+----------+
| sid     | sname      | age  | sphno       | bloodgrp |
+---------+------------+------+-------------+----------+
| o191041 | meghana    |   18 | 9705105900  | A+       |
| o191052 | vaishnavi  |   18 | 7997265724  | O-       |
| o191021 | rajeshwari |   18 | 9763563578  | B+       |
| o191042 | bhavani    |   18 | 8727671636  | O+       |
| o191040 | lavanya    |   18 | 9826536236  | O+       |
| o191018 | maheswari  |   18 | 9872533646  | A+       |
| o190728 | anusha     |   18 | 7416009992  | O+       |
| o191053 | jyothi     |   18 | 9881273321  | B+       |
| o191058 | mounika    |   18 | 96405097262 | O+       |
| o191044 | yazna      |   18 | 9826556235  | B+       |
+---------+------------+------+-------------+----------+
10 rows in set (0.00 sec)

mysql> update rc1 set sphno=9640504988 where sphno=96405097262;
Query OK, 1 row affected (0.47 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from rc1;
+---------+------------+------+------------+----------+
| sid     | sname      | age  | sphno      | bloodgrp |
+---------+------------+------+------------+----------+
| o191041 | meghana    |   18 | 9705105900 | A+       |
| o191052 | vaishnavi  |   18 | 7997265724 | O-       |
| o191021 | rajeshwari |   18 | 9763563578 | B+       |
| o191042 | bhavani    |   18 | 8727671636 | O+       |
| o191040 | lavanya    |   18 | 9826536236 | O+       |
| o191018 | maheswari  |   18 | 9872533646 | A+       |
| o190728 | anusha     |   18 | 7416009992 | O+       |
| o191053 | jyothi     |   18 | 9881273321 | B+       |
| o191058 | mounika    |   18 | 9640504988 | O+       |
| o191044 | yazna      |   18 | 9826556235 | B+       |
+---------+------------+------+------------+----------+
10 rows in set (0.00 sec)

mysql> rename table rc1 to student;
Query OK, 0 rows affected (0.71 sec)

mysql> selct *from student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'selct *from student' at line 1
mysql> select *from student;
+---------+------------+------+------------+----------+
| sid     | sname      | age  | sphno      | bloodgrp |
+---------+------------+------+------------+----------+
| o191041 | meghana    |   18 | 9705105900 | A+       |
| o191052 | vaishnavi  |   18 | 7997265724 | O-       |
| o191021 | rajeshwari |   18 | 9763563578 | B+       |
| o191042 | bhavani    |   18 | 8727671636 | O+       |
| o191040 | lavanya    |   18 | 9826536236 | O+       |
| o191018 | maheswari  |   18 | 9872533646 | A+       |
| o190728 | anusha     |   18 | 7416009992 | O+       |
| o191053 | jyothi     |   18 | 9881273321 | B+       |
| o191058 | mounika    |   18 | 9640504988 | O+       |
| o191044 | yazna      |   18 | 9826556235 | B+       |
+---------+------------+------+------------+----------+
10 rows in set (0.01 sec)


