mysql> create database lab1;
Query OK, 1 row affected (0.12 sec)

mysql> create table emp(eid int,ename char(20),eage int,ephno varchar(20),salary int);
Query OK, 0 rows affected (0.37 sec)

mysql> insert into emp values(1,'saikishore',23,9502677136,30000);
Query OK, 1 row affected (0.85 sec)

mysql> insert into emp values(2,'swamy',30,8273356635,50000);
Query OK, 1 row affected (0.08 sec)

mysql> insert into emp values(3,'meghana',18,9705105900,15000);
Query OK, 1 row affected (0.08 sec)

mysql> insert into emp values(4,'prasanna',15,9878263359,12000);
Query OK, 1 row affected (0.43 sec)

mysql> insert into emp values(5,'pandu',15,8172635349,12000);
Query OK, 1 row affected (0.08 sec)

mysql> insert into emp values(5,'nani',25,5272192983,30000);
Query OK, 1 row affected (0.46 sec)

mysql> insert into emp values(7,'narayana',30,9278276313,35000);
Query OK, 1 row affected (0.07 sec)

mysql> insert into emp values(8,'ramya',25,9287236736,25000);
Query OK, 1 row affected (0.08 sec)

mysql> insert into emp values(9,'teja',28,9812673537,20000);
Query OK, 1 row affected (0.07 sec)

mysql> insert into emp values(10,'pandavulu',40,8106528919,35000);
Query OK, 1 row affected (0.07 sec)

mysql> select *from emp;
+------+------------+------+------------+--------+
| eid  | ename      | eage | ephno      | salary |
+------+------------+------+------------+--------+
|    1 | saikishore |   23 | 9502677136 |  30000 |
|    2 | swamy      |   30 | 8273356635 |  50000 |
|    3 | meghana    |   18 | 9705105900 |  15000 |
|    4 | prasanna   |   15 | 9878263359 |  12000 |
|    5 | pandu      |   15 | 8172635349 |  12000 |
|    5 | nani       |   25 | 5272192983 |  30000 |
|    7 | narayana   |   30 | 9278276313 |  35000 |
|    8 | ramya      |   25 | 9287236736 |  25000 |
|    9 | teja       |   28 | 9812673537 |  20000 |
|   10 | pandavulu  |   40 | 8106528919 |  35000 |
+------+------------+------+------------+--------+
10 rows in set (0.00 sec)

mysql> alter table emp add branch char(10);
Query OK, 0 rows affected (0.72 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from emp;
+------+------------+------+------------+--------+--------+
| eid  | ename      | eage | ephno      | salary | branch |
+------+------------+------+------------+--------+--------+
|    1 | saikishore |   23 | 9502677136 |  30000 | NULL   |
|    2 | swamy      |   30 | 8273356635 |  50000 | NULL   |
|    3 | meghana    |   18 | 9705105900 |  15000 | NULL   |
|    4 | prasanna   |   15 | 9878263359 |  12000 | NULL   |
|    5 | pandu      |   15 | 8172635349 |  12000 | NULL   |
|    5 | nani       |   25 | 5272192983 |  30000 | NULL   |
|    7 | narayana   |   30 | 9278276313 |  35000 | NULL   |
|    8 | ramya      |   25 | 9287236736 |  25000 | NULL   |
|    9 | teja       |   28 | 9812673537 |  20000 | NULL   |
|   10 | pandavulu  |   40 | 8106528919 |  35000 | NULL   |
+------+------------+------+------------+--------+--------+
10 rows in set (0.00 sec)

mysql> alter table emp drop eage;
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from emp;
+------+------------+------------+--------+--------+
| eid  | ename      | ephno      | salary | branch |
+------+------------+------------+--------+--------+
|    1 | saikishore | 9502677136 |  30000 | NULL   |
|    2 | swamy      | 8273356635 |  50000 | NULL   |
|    3 | meghana    | 9705105900 |  15000 | NULL   |
|    4 | prasanna   | 9878263359 |  12000 | NULL   |
|    5 | pandu      | 8172635349 |  12000 | NULL   |
|    5 | nani       | 5272192983 |  30000 | NULL   |
|    7 | narayana   | 9278276313 |  35000 | NULL   |
|    8 | ramya      | 9287236736 |  25000 | NULL   |
|    9 | teja       | 9812673537 |  20000 | NULL   |
|   10 | pandavulu  | 8106528919 |  35000 | NULL   |
+------+------------+------------+--------+--------+
10 rows in set (0.00 sec)

mysql> update table emp set branch='infosys';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table emp set branch='infosys'' at line 1
mysql> update emp set branch='infosys';
Query OK, 10 rows affected (0.44 sec)
Rows matched: 10  Changed: 10  Warnings: 0

mysql> select *from emp;
+------+------------+------------+--------+---------+
| eid  | ename      | ephno      | salary | branch  |
+------+------------+------------+--------+---------+
|    1 | saikishore | 9502677136 |  30000 | infosys |
|    2 | swamy      | 8273356635 |  50000 | infosys |
|    3 | meghana    | 9705105900 |  15000 | infosys |
|    4 | prasanna   | 9878263359 |  12000 | infosys |
|    5 | pandu      | 8172635349 |  12000 | infosys |
|    5 | nani       | 5272192983 |  30000 | infosys |
|    7 | narayana   | 9278276313 |  35000 | infosys |
|    8 | ramya      | 9287236736 |  25000 | infosys |
|    9 | teja       | 9812673537 |  20000 | infosys |
|   10 | pandavulu  | 8106528919 |  35000 | infosys |
+------+------------+------------+--------+---------+
10 rows in set (0.01 sec)

mysql> insert into emp values(11,'megha',7823678371,286323,'infosys');
Query OK, 1 row affected (0.45 sec)

mysql> select *from emp;
+------+------------+------------+--------+---------+
| eid  | ename      | ephno      | salary | branch  |
+------+------------+------------+--------+---------+
|    1 | saikishore | 9502677136 |  30000 | infosys |
|    2 | swamy      | 8273356635 |  50000 | infosys |
|    3 | meghana    | 9705105900 |  15000 | infosys |
|    4 | prasanna   | 9878263359 |  12000 | infosys |
|    5 | pandu      | 8172635349 |  12000 | infosys |
|    5 | nani       | 5272192983 |  30000 | infosys |
|    7 | narayana   | 9278276313 |  35000 | infosys |
|    8 | ramya      | 9287236736 |  25000 | infosys |
|    9 | teja       | 9812673537 |  20000 | infosys |
|   10 | pandavulu  | 8106528919 |  35000 | infosys |
|   11 | megha      | 7823678371 | 286323 | infosys |
+------+------------+------------+--------+---------+
11 rows in set (0.00 sec)

mysql> delete from emp where eid=11;
Query OK, 1 row affected (0.44 sec)

mysql> select *from emp;
+------+------------+------------+--------+---------+
| eid  | ename      | ephno      | salary | branch  |
+------+------------+------------+--------+---------+
|    1 | saikishore | 9502677136 |  30000 | infosys |
|    2 | swamy      | 8273356635 |  50000 | infosys |
|    3 | meghana    | 9705105900 |  15000 | infosys |
|    4 | prasanna   | 9878263359 |  12000 | infosys |
|    5 | pandu      | 8172635349 |  12000 | infosys |
|    5 | nani       | 5272192983 |  30000 | infosys |
|    7 | narayana   | 9278276313 |  35000 | infosys |
|    8 | ramya      | 9287236736 |  25000 | infosys |
|    9 | teja       | 9812673537 |  20000 | infosys |
|   10 | pandavulu  | 8106528919 |  35000 | infosys |
+------+------------+------------+--------+---------+
10 rows in set (0.00 sec)

mysql> upadte emp set eid=6 where ename='nani';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'upadte emp set eid=6 where ename='nani'' at line 1
mysql> update emp set eid=6 where ename='nani';
Query OK, 1 row affected (0.47 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from emp;
+------+------------+------------+--------+---------+
| eid  | ename      | ephno      | salary | branch  |
+------+------------+------------+--------+---------+
|    1 | saikishore | 9502677136 |  30000 | infosys |
|    2 | swamy      | 8273356635 |  50000 | infosys |
|    3 | meghana    | 9705105900 |  15000 | infosys |
|    4 | prasanna   | 9878263359 |  12000 | infosys |
|    5 | pandu      | 8172635349 |  12000 | infosys |
|    6 | nani       | 5272192983 |  30000 | infosys |
|    7 | narayana   | 9278276313 |  35000 | infosys |
|    8 | ramya      | 9287236736 |  25000 | infosys |
|    9 | teja       | 9812673537 |  20000 | infosys |
|   10 | pandavulu  | 8106528919 |  35000 | infosys |
+------+------------+------------+--------+---------+
10 rows in set (0.00 sec)

mysql> desc reordercolumn;
ERROR 1146 (42S02): Table 'lab.reordercolumn' doesn't exist
mysql> desc lab1;
ERROR 1146 (42S02): Table 'lab.lab1' doesn't exist
mysql> desc emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| eid    | int         | YES  |     | NULL    |       |
| ename  | char(20)    | YES  |     | NULL    |       |
| ephno  | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| branch | char(10)    | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table emp modify column branch char(10) after ename;
Query OK, 0 rows affected (0.78 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from emp;
+------+------------+---------+------------+--------+
| eid  | ename      | branch  | ephno      | salary |
+------+------------+---------+------------+--------+
|    1 | saikishore | infosys | 9502677136 |  30000 |
|    2 | swamy      | infosys | 8273356635 |  50000 |
|    3 | meghana    | infosys | 9705105900 |  15000 |
|    4 | prasanna   | infosys | 9878263359 |  12000 |
|    5 | pandu      | infosys | 8172635349 |  12000 |
|    6 | nani       | infosys | 5272192983 |  30000 |
|    7 | narayana   | infosys | 9278276313 |  35000 |
|    8 | ramya      | infosys | 9287236736 |  25000 |
|    9 | teja       | infosys | 9812673537 |  20000 |
|   10 | pandavulu  | infosys | 8106528919 |  35000 |
+------+------------+---------+------------+--------+
10 rows in set (0.00 sec)

mysql> alter table emp modify column salary int after ephno;
Query OK, 0 rows affected (0.48 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from emp;
+------+------------+---------+------------+--------+
| eid  | ename      | branch  | ephno      | salary |
+------+------------+---------+------------+--------+
|    1 | saikishore | infosys | 9502677136 |  30000 |
|    2 | swamy      | infosys | 8273356635 |  50000 |
|    3 | meghana    | infosys | 9705105900 |  15000 |
|    4 | prasanna   | infosys | 9878263359 |  12000 |
|    5 | pandu      | infosys | 8172635349 |  12000 |
|    6 | nani       | infosys | 5272192983 |  30000 |
|    7 | narayana   | infosys | 9278276313 |  35000 |
|    8 | ramya      | infosys | 9287236736 |  25000 |
|    9 | teja       | infosys | 9812673537 |  20000 |
|   10 | pandavulu  | infosys | 8106528919 |  35000 |
+------+------------+---------+------------+--------+
10 rows in set (0.00 sec)

mysql> alter table emp modify column salary int before ephno;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'before ephno' at line 1
mysql> alter table emp modify column salary int after branch;
Query OK, 0 rows affected (0.82 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from emp;
+------+------------+---------+--------+------------+
| eid  | ename      | branch  | salary | ephno      |
+------+------------+---------+--------+------------+
|    1 | saikishore | infosys |  30000 | 9502677136 |
|    2 | swamy      | infosys |  50000 | 8273356635 |
|    3 | meghana    | infosys |  15000 | 9705105900 |
|    4 | prasanna   | infosys |  12000 | 9878263359 |
|    5 | pandu      | infosys |  12000 | 8172635349 |
|    6 | nani       | infosys |  30000 | 5272192983 |
|    7 | narayana   | infosys |  35000 | 9278276313 |
|    8 | ramya      | infosys |  25000 | 9287236736 |
|    9 | teja       | infosys |  20000 | 9812673537 |
|   10 | pandavulu  | infosys |  35000 | 8106528919 |
+------+------------+---------+--------+------------+
10 rows in set (0.00 sec)

mysql> use kab;
ERROR 1049 (42000): Unknown database 'kab'
mysql> use lab;
Database changed
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
| lab1               |
| linuxhint          |
| meghana            |
| mysql              |
| performance_schema |
| sys                |
| tcl                |
+--------------------+
13 rows in set (0.00 sec)

mysql> show tables;
+---------------+
| Tables_in_lab |
+---------------+
| emp           |
| student       |
+---------------+
2 rows in set (0.00 sec)

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
10 rows in set (0.00 sec)

mysql> use lab1;
Database changed
mysql> show tables;
Empty set (0.00 sec)


mysql> use lab1;
Database changed
mysql> show tables;
Empty set (0.00 sec)


