sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.30-0ubuntu0.20.04.2 (Ubuntu)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database meghana;
Query OK, 1 row affected (0.10 sec)

mysql> use meghana;
Database changed
mysql> create table mydata(name char(30),id varchar(30),age int,weight int,bloodgroup char(5));
Query OK, 0 rows affected (1.27 sec)

mysql> insert into mydata values(meghana,o191041,18,42,A);
ERROR 1054 (42S22): Unknown column 'meghana' in 'field list'
mysql> insert into mydata values('meghana',o191041,18,42,A);
ERROR 1054 (42S22): Unknown column 'o191041' in 'field list'
mysql> insert into mydata values('meghana','o191041',18,42,A);
ERROR 1054 (42S22): Unknown column 'A' in 'field list'
mysql> insert into mydata values('meghana','o191041',18,42,'A');
Query OK, 1 row affected (0.45 sec)

mysql> insert into mydata values('prabha',o191052,30,50,'A');
ERROR 1054 (42S22): Unknown column 'o191052' in 'field list'
mysql> insert into mydata values('prabha','o191050',30,50,'A');
Query OK, 1 row affected (0.44 sec)

mysql> insert into mydata values('pandu','o191051',40,52,'B');
Query OK, 1 row affected (0.07 sec)

mysql> insert into mydata values('sai','o191052',23,50,'O');
Query OK, 1 row affected (0.46 sec)

mysql> insert into mydata values('prasanna','o191053',16,39,'O');
Query OK, 1 row affected (0.45 sec)

mysql> insert into mydata values('paandu','o191054',14,30,'O');
Query OK, 1 row affected (0.07 sec)

mysql> insert into mydata values('ramya','o191055',14,30,'B');
Query OK, 1 row affected (0.07 sec)

mysql> insert into mydata values('teja','o191056',14,30,'A');
Query OK, 1 row affected (0.08 sec)

mysql> insert into mydata values('surya','o191057',39,50,'O');
Query OK, 1 row affected (0.45 sec)

mysql> insert into mydata values('satya','o191058',58,54,'O');
Query OK, 1 row affected (0.42 sec)

mysql> select *from mydata;
+----------+---------+------+--------+------------+
| name     | id      | age  | weight | bloodgroup |
+----------+---------+------+--------+------------+
| meghana  | o191041 |   18 |     42 | A          |
| prabha   | o191050 |   30 |     50 | A          |
| pandu    | o191051 |   40 |     52 | B          |
| sai      | o191052 |   23 |     50 | O          |
| prasanna | o191053 |   16 |     39 | O          |
| paandu   | o191054 |   14 |     30 | O          |
| ramya    | o191055 |   14 |     30 | B          |
| teja     | o191056 |   14 |     30 | A          |
| surya    | o191057 |   39 |     50 | O          |
| satya    | o191058 |   58 |     54 | O          |
+----------+---------+------+--------+------------+
10 rows in set (0.00 sec)

mysql> alter table mydata alter age,weight;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',weight' at line 1
mysql> alter table mydata add(category varchar(30));
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from mydata;
+----------+---------+------+--------+------------+----------+
| name     | id      | age  | weight | bloodgroup | category |
+----------+---------+------+--------+------------+----------+
| meghana  | o191041 |   18 |     42 | A          | NULL     |
| prabha   | o191050 |   30 |     50 | A          | NULL     |
| pandu    | o191051 |   40 |     52 | B          | NULL     |
| sai      | o191052 |   23 |     50 | O          | NULL     |
| prasanna | o191053 |   16 |     39 | O          | NULL     |
| paandu   | o191054 |   14 |     30 | O          | NULL     |
| ramya    | o191055 |   14 |     30 | B          | NULL     |
| teja     | o191056 |   14 |     30 | A          | NULL     |
| surya    | o191057 |   39 |     50 | O          | NULL     |
| satya    | o191058 |   58 |     54 | O          | NULL     |
+----------+---------+------+--------+------------+----------+
10 rows in set (0.00 sec)

mysql> alter table mydata drop(category varchar(30));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(category varchar(30))' at line 1
mysql> alter table mydata drop category;
Query OK, 0 rows affected (0.76 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from mydata;
+----------+---------+------+--------+------------+
| name     | id      | age  | weight | bloodgroup |
+----------+---------+------+--------+------------+
| meghana  | o191041 |   18 |     42 | A          |
| prabha   | o191050 |   30 |     50 | A          |
| pandu    | o191051 |   40 |     52 | B          |
| sai      | o191052 |   23 |     50 | O          |
| prasanna | o191053 |   16 |     39 | O          |
| paandu   | o191054 |   14 |     30 | O          |
| ramya    | o191055 |   14 |     30 | B          |
| teja     | o191056 |   14 |     30 | A          |
| surya    | o191057 |   39 |     50 | O          |
| satya    | o191058 |   58 |     54 | O          |
+----------+---------+------+--------+------------+
10 rows in set (0.01 sec)

mysql> alter table mydata modify(bloodgroup varchar(30));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(bloodgroup varchar(30))' at line 1
mysql> alter table mydata modify(bloodgroup varchar(30));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(bloodgroup varchar(30))' at line 1
mysql> alter table mydata modify bloodgroup varchar(30);
Query OK, 10 rows affected (0.92 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select *from mydata;
+----------+---------+------+--------+------------+
| name     | id      | age  | weight | bloodgroup |
+----------+---------+------+--------+------------+
| meghana  | o191041 |   18 |     42 | A          |
| prabha   | o191050 |   30 |     50 | A          |
| pandu    | o191051 |   40 |     52 | B          |
| sai      | o191052 |   23 |     50 | O          |
| prasanna | o191053 |   16 |     39 | O          |
| paandu   | o191054 |   14 |     30 | O          |
| ramya    | o191055 |   14 |     30 | B          |
| teja     | o191056 |   14 |     30 | A          |
| surya    | o191057 |   39 |     50 | O          |
| satya    | o191058 |   58 |     54 | O          |
+----------+---------+------+--------+------------+
10 rows in set (0.00 sec)

mysql> update bloodgroup='A+' where id='o191041';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '='A+' where id='o191041'' at line 1
mysql> update table mydata set bloodgroup='A+' where bloodgroup='A';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table mydata set bloodgroup='A+' where bloodgroup='A'' at line 1
mysql> update mydata set bloodgroup='A+' where id='o191041';
Query OK, 1 row affected (0.10 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from mydata;
+----------+---------+------+--------+------------+
| name     | id      | age  | weight | bloodgroup |
+----------+---------+------+--------+------------+
| meghana  | o191041 |   18 |     42 | A+         |
| prabha   | o191050 |   30 |     50 | A          |
| pandu    | o191051 |   40 |     52 | B          |
| sai      | o191052 |   23 |     50 | O          |
| prasanna | o191053 |   16 |     39 | O          |
| paandu   | o191054 |   14 |     30 | O          |
| ramya    | o191055 |   14 |     30 | B          |
| teja     | o191056 |   14 |     30 | A          |
| surya    | o191057 |   39 |     50 | O          |
| satya    | o191058 |   58 |     54 | O          |
+----------+---------+------+--------+------------+
10 rows in set (0.00 sec)

mysql> update mydata set bloodgroup='A+' where bloodgroup='A';
Query OK, 2 rows affected (0.44 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select *from mydata;
+----------+---------+------+--------+------------+
| name     | id      | age  | weight | bloodgroup |
+----------+---------+------+--------+------------+
| meghana  | o191041 |   18 |     42 | A+         |
| prabha   | o191050 |   30 |     50 | A+         |
| pandu    | o191051 |   40 |     52 | B          |
| sai      | o191052 |   23 |     50 | O          |
| prasanna | o191053 |   16 |     39 | O          |
| paandu   | o191054 |   14 |     30 | O          |
| ramya    | o191055 |   14 |     30 | B          |
| teja     | o191056 |   14 |     30 | A+         |
| surya    | o191057 |   39 |     50 | O          |
| satya    | o191058 |   58 |     54 | O          |
+----------+---------+------+--------+------------+
10 rows in set (0.00 sec)

mysql> update mydata set bloodgroup='O+' where bloodgroup='O';
Query OK, 5 rows affected (0.45 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select *from mydata;
+----------+---------+------+--------+------------+
| name     | id      | age  | weight | bloodgroup |
+----------+---------+------+--------+------------+
| meghana  | o191041 |   18 |     42 | A+         |
| prabha   | o191050 |   30 |     50 | A+         |
| pandu    | o191051 |   40 |     52 | B          |
| sai      | o191052 |   23 |     50 | O+         |
| prasanna | o191053 |   16 |     39 | O+         |
| paandu   | o191054 |   14 |     30 | O+         |
| ramya    | o191055 |   14 |     30 | B          |
| teja     | o191056 |   14 |     30 | A+         |
| surya    | o191057 |   39 |     50 | O+         |
| satya    | o191058 |   58 |     54 | O+         |
+----------+---------+------+--------+------------+
10 rows in set (0.00 sec)

mysql> update mydata set bloodgroup='B+' where bloodgroup='B';
Query OK, 2 rows affected (0.47 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select *from mydata;
+----------+---------+------+--------+------------+
| name     | id      | age  | weight | bloodgroup |
+----------+---------+------+--------+------------+
| meghana  | o191041 |   18 |     42 | A+         |
| prabha   | o191050 |   30 |     50 | A+         |
| pandu    | o191051 |   40 |     52 | B+         |
| sai      | o191052 |   23 |     50 | O+         |
| prasanna | o191053 |   16 |     39 | O+         |
| paandu   | o191054 |   14 |     30 | O+         |
| ramya    | o191055 |   14 |     30 | B+         |
| teja     | o191056 |   14 |     30 | A+         |
| surya    | o191057 |   39 |     50 | O+         |
| satya    | o191058 |   58 |     54 | O+         |
+----------+---------+------+--------+------------+
10 rows in set (0.00 sec)

mysql> alter table mydata rename to familydata;
Query OK, 0 rows affected (0.69 sec)

mysql> select *from familydata;
+----------+---------+------+--------+------------+
| name     | id      | age  | weight | bloodgroup |
+----------+---------+------+--------+------------+
| meghana  | o191041 |   18 |     42 | A+         |
| prabha   | o191050 |   30 |     50 | A+         |
| pandu    | o191051 |   40 |     52 | B+         |
| sai      | o191052 |   23 |     50 | O+         |
| prasanna | o191053 |   16 |     39 | O+         |
| paandu   | o191054 |   14 |     30 | O+         |
| ramya    | o191055 |   14 |     30 | B+         |
| teja     | o191056 |   14 |     30 | A+         |
| surya    | o191057 |   39 |     50 | O+         |
| satya    | o191058 |   58 |     54 | O+         |
+----------+---------+------+--------+------------+
10 rows in set (0.00 sec)

mysql> rename table familydata to mydata;
Query OK, 0 rows affected (0.28 sec)

mysql> select *from mydata;
+----------+---------+------+--------+------------+
| name     | id      | age  | weight | bloodgroup |
+----------+---------+------+--------+------------+
| meghana  | o191041 |   18 |     42 | A+         |
| prabha   | o191050 |   30 |     50 | A+         |
| pandu    | o191051 |   40 |     52 | B+         |
| sai      | o191052 |   23 |     50 | O+         |
| prasanna | o191053 |   16 |     39 | O+         |
| paandu   | o191054 |   14 |     30 | O+         |
| ramya    | o191055 |   14 |     30 | B+         |
| teja     | o191056 |   14 |     30 | A+         |
| surya    | o191057 |   39 |     50 | O+         |
| satya    | o191058 |   58 |     54 | O+         |
+----------+---------+------+--------+------------+
10 rows in set (0.01 sec)


