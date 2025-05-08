mysql> create database example;
Query OK, 1 row affected (0.10 sec)

mysql> create table ex1(sid int,sname char(10),age int);
Query OK, 0 rows affected (0.94 sec)

mysql> insert into ex1(1,'meghana',18);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,'meghana',18)' at line 1
mysql> insert into ex1 values(1,'meghana',18);
Query OK, 1 row affected (0.44 sec)

mysql> insert into ex1 values(2,'sai',23);
Query OK, 1 row affected (0.47 sec)

mysql> insert into ex1 values(3,'prassu',15);
Query OK, 1 row affected (0.07 sec)

mysql> insert into ex1 values(4,'pandu',12);
Query OK, 1 row affected (0.10 sec)

mysql> insert into ex1 values(5,'rama',28);
Query OK, 1 row affected (0.44 sec)

mysql> select *from ex1;
+------+---------+------+
| sid  | sname   | age  |
+------+---------+------+
|    1 | meghana |   18 |
|    2 | sai     |   23 |
|    3 | prassu  |   15 |
|    4 | pandu   |   12 |
|    5 | rama    |   28 |
+------+---------+------+
5 rows in set (0.00 sec)

mysql> update ex1 set age=19 where age=18;
Query OK, 1 row affected (0.45 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from ex1;
+------+---------+------+
| sid  | sname   | age  |
+------+---------+------+
|    1 | meghana |   19 |
|    2 | sai     |   23 |
|    3 | prassu  |   15 |
|    4 | pandu   |   12 |
|    5 | rama    |   28 |
+------+---------+------+
5 rows in set (0.00 sec)

mysql> delete table ex1 where age=19;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table ex1 where age=19' at line 1
mysql> delete age from ex1 where age=19;
ERROR 1109 (42S02): Unknown table 'age' in MULTI DELETE
mysql> delete age from ex1 where sid=1;
ERROR 1109 (42S02): Unknown table 'age' in MULTI DELETE
mysql> delete from ex1 where sid=1;
Query OK, 1 row affected (0.10 sec)

mysql> select *from ex1;
+------+--------+------+
| sid  | sname  | age  |
+------+--------+------+
|    2 | sai    |   23 |
|    3 | prassu |   15 |
|    4 | pandu  |   12 |
|    5 | rama   |   28 |
+------+--------+------+
4 rows in set (0.00 sec)

