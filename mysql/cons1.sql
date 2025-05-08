sudo mysql
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 180
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
| bakery             |
| college            |
| information_schema |
| linuxhint          |
| manager            |
| mysql              |
| performance_schema |
| school             |
| sys                |
+--------------------+
9 rows in set (0.00 sec)

mysql> use school;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+------------------+
| Tables_in_school |
+------------------+
| civil            |
| cse              |
| ece              |
| orders           |
+------------------+
4 rows in set (0.00 sec)

mysql> select *from orders;
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1994-10-24 | 2021 | 1007 |
| 3003 |  767.19 | 1994-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1994-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1994-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1994-10-04 | 2021 | 1007 |
| 3009 | 1713.23 | 1994-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1994-10-05 | 2012 | 1002 |
| 3008 | 4723.00 | 1994-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1994-10-06 | 2012 | 1002 |
| 3011 | 9891.88 | 1994-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
10 rows in set (0.00 sec)

mysql> create table student
    -> (sid int,sname varchar(30),branch varchar(20),perc float,primary key(sid));
Query OK, 0 rows affected (0.83 sec)

mysql> desc student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| sid    | int         | NO   | PRI | NULL    |       |
| sname  | varchar(30) | YES  |     | NULL    |       |
| branch | varchar(20) | YES  |     | NULL    |       |
| perc   | float       | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into student values (101,'meghana','cse',98);
Query OK, 1 row affected (0.07 sec)

mysql> select *from student;
+-----+---------+--------+------+
| sid | sname   | branch | perc |
+-----+---------+--------+------+
| 101 | meghana | cse    |   98 |
+-----+---------+--------+------+
1 row in set (0.00 sec)

mysql> insert into student values(102,'sai','ece',100);
Query OK, 1 row affected (0.09 sec)

mysql> select *from student;
+-----+---------+--------+------+
| sid | sname   | branch | perc |
+-----+---------+--------+------+
| 101 | meghana | cse    |   98 |
| 102 | sai     | ece    |  100 |
+-----+---------+--------+------+
2 rows in set (0.00 sec)

mysql> insert into student(sid,sname,branch)values(103,'megha','ece');
Query OK, 1 row affected (0.07 sec)

mysql> select *from student;
+-----+---------+--------+------+
| sid | sname   | branch | perc |
+-----+---------+--------+------+
| 101 | meghana | cse    |   98 |
| 102 | sai     | ece    |  100 |
| 103 | megha   | ece    | NULL |
+-----+---------+--------+------+
3 rows in set (0.00 sec)

mysql> drop table student;
Query OK, 0 rows affected (0.27 sec)

mysql> create table student(sid int,sname varchar(30),branch varchar(20),perc float not null,primary key(sid));
Query OK, 0 rows affected (0.34 sec)

mysql> insert into student values(101,'meghana','cse',90);
Query OK, 1 row affected (0.08 sec)

mysql> select *from student;
+-----+---------+--------+------+
| sid | sname   | branch | perc |
+-----+---------+--------+------+
| 101 | meghana | cse    |   90 |
+-----+---------+--------+------+
1 row in set (0.00 sec)

mysql> insert into student (sid,perc)values(102,100);
Query OK, 1 row affected (0.08 sec)

mysql> select *from student;
+-----+---------+--------+------+
| sid | sname   | branch | perc |
+-----+---------+--------+------+
| 101 | meghana | cse    |   90 |
| 102 | NULL    | NULL   |  100 |
+-----+---------+--------+------+
2 rows in set (0.00 sec)

mysql> drop table student;
Query OK, 0 rows affected (0.73 sec)

mysql> create table student(sid int,sname varchar(30),branch varchar(20),age int,primary key(sid),check(age>18);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table student(sid int,sname varchar(30),branch varchar(20),age int,primary key(sid),check(age>18));
Query OK, 0 rows affected (0.35 sec)

mysql> desc student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| sid    | int         | NO   | PRI | NULL    |       |
| sname  | varchar(30) | YES  |     | NULL    |       |
| branch | varchar(20) | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into student values(101,'megha','cse',100);
Query OK, 1 row affected (0.05 sec)

mysql> select *form student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'form student' at line 1
mysql> select *from student;
+-----+-------+--------+------+
| sid | sname | branch | age  |
+-----+-------+--------+------+
| 101 | megha | cse    |  100 |
+-----+-------+--------+------+
1 row in set (0.00 sec)


sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 184
Server version: 8.0.30-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use school;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+------------------+
| Tables_in_school |
+------------------+
| civil            |
| cse              |
| ece              |
| orders           |
| student          |
+------------------+
5 rows in set (0.00 sec)

mysql> drop student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'student' at line 1
mysql> drop table student;
Query OK, 0 rows affected (0.23 sec)

mysql> create table student(sid int,sname varchar(30),branch varchar(20),college varchar(20) default 'daddy',primary key(sid));
Query OK, 0 rows affected (0.87 sec)

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| sid     | int         | NO   | PRI | NULL    |       |
| sname   | varchar(30) | YES  |     | NULL    |       |
| branch  | varchar(20) | YES  |     | NULL    |       |
| college | varchar(20) | YES  |     | daddy   |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into student values(101.'megha','cse','sai');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''megha','cse','sai')' at line 1
mysql> insert into student values(101,'megha','cse','sai');
Query OK, 1 row affected (0.09 sec)

mysql> select *from student;
+-----+-------+--------+---------+
| sid | sname | branch | college |
+-----+-------+--------+---------+
| 101 | megha | cse    | sai     |
+-----+-------+--------+---------+
1 row in set (0.00 sec)

mysql> insert into student (sid,sname,branch)values(102,'lu dad','cse');
Query OK, 1 row affected (0.45 sec)

mysql> select *from student;
+-----+--------+--------+---------+
| sid | sname  | branch | college |
+-----+--------+--------+---------+
| 101 | megha  | cse    | sai     |
| 102 | lu dad | cse    | daddy   |
+-----+--------+--------+---------+
2 rows in set (0.00 sec)

mysql> drop table student;
Query OK, 0 rows affected (0.67 sec)

mysql> create table student(sid int,sname varchar(30),contact int unique,primary key(sid));
Query OK, 0 rows affected (0.64 sec)

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| sid     | int         | NO   | PRI | NULL    |       |
| sname   | varchar(30) | YES  |     | NULL    |       |
| contact | int         | YES  | UNI | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into student values(101,'megha',122344555);
Query OK, 1 row affected (0.07 sec)

mysql> select into student(sname) values('megha');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'into student(sname) values('megha')' at line 1
mysql> insert into student values(102,'meghan',122344555);
ERROR 1062 (23000): Duplicate entry '122344555' for key 'student.contact'
mysql> insert into student (sid,name)values(102,'saradhi');
ERROR 1054 (42S22): Unknown column 'name' in 'field list'
mysql> insert into student (sid,sname)values(102,'prabha');
Query OK, 1 row affected (0.51 sec)

mysql> select *from student;
+-----+--------+-----------+
| sid | sname  | contact   |
+-----+--------+-----------+
| 101 | megha  | 122344555 |
| 102 | prabha |      NULL |
+-----+--------+-----------+
2 rows in set (0.00 sec)

mysql> create table course(cid int,cname varchar(30),primary key(cid));
Query OK, 0 rows affected (0.86 sec)

mysql> show tables;
+------------------+
| Tables_in_school |
+------------------+
| civil            |
| course           |
| cse              |
| ece              |
| orders           |
| student          |
+------------------+
6 rows in set (0.00 sec)

mysql> drop student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'student' at line 1
mysql> drop table student;
Query OK, 0 rows affected (0.23 sec)

mysql> create table student(sid int,sname varchar(30),branch varchar(20),cid int,primary key(sid),foreign key(cid) references course(cid));
Query OK, 0 rows affected (0.66 sec)

mysql> show tables;
+------------------+
| Tables_in_school |
+------------------+
| civil            |
| course           |
| cse              |
| ece              |
| orders           |
| student          |
+------------------+
6 rows in set (0.00 sec)

mysql> desc student;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| sid    | int         | NO   | PRI | NULL    |       |
| sname  | varchar(30) | YES  |     | NULL    |       |
| branch | varchar(20) | YES  |     | NULL    |       |
| cid    | int         | YES  | MUL | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

