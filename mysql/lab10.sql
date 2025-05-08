mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| CSESEC4            |
| E2CSE4             |
| ass                |
| bakery             |
| company            |
| example            |
| func               |
| information_schema |
| keywords           |
| lab                |
| lab1               |
| lab5               |
| linuxhint          |
| manual             |
| mom                |
| mysql              |
| performance_schema |
| rel                |
| relation           |
| seminar            |
| std                |
| sys                |
| tcl                |
| types              |
+--------------------+
24 rows in set (0.01 sec)

mysql> use ass;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+---------------+
| Tables_in_ass |
+---------------+
| emp           |
+---------------+
1 row in set (0.00 sec)

mysql> select *from emp;
+--------+-------+--------+----------+------+------+---------+-------+
| ename  | empno | salary | job      | dept | year | manager | month |
+--------+-------+--------+----------+------+------+---------+-------+
| king   |  7839 |   5000 | salesman |   10 | 1981 |    7566 | feb   |
| blake  |  7698 |   2850 | manager  |   30 | 1981 |    7566 | feb   |
| clark  |  7782 |   2450 | manager  |   10 | 1982 |    7566 | feb   |
| jones  |  7566 |   2975 | manager  |   20 | 1982 |    7566 | feb   |
| martin |  7654 |   1250 | analyst  |   30 | 1987 |    7698 | feb   |
| james  |  7226 |   1800 | clerk    |   30 | 1982 |    7698 | feb   |
| allen  |  7239 |   4000 | salesman |   30 | 1987 |    7698 | feb   |
| turner |  7239 |   4000 | salesman |   30 | 1987 |    7698 | feb   |
| ward   |  7239 |   4000 | salesman |   30 | 1987 |    7698 | feb   |
| ford   |  7902 |   3000 | salesman |   30 | 1987 |    7852 | feb   |
| scott  |  7788 |   3000 | salesman |   30 | 1987 |    7852 | feb   |
| smith  |  7788 |   3000 | salesman |   10 | 1987 |    7852 | feb   |
| adams  |  7788 |   3000 | salesman |   10 | 1987 |    7852 | jan   |
| miller |  7788 |   3000 | salesman |   10 | 1987 |    7852 | jan   |
+--------+-------+--------+----------+------+------+---------+-------+
14 rows in set (0.00 sec)

mysql> select ename,year from emp where year=1981;
+-------+------+
| ename | year |
+-------+------+
| king  | 1981 |
| blake | 1981 |
+-------+------+
2 rows in set (0.00 sec)

mysql> select distinct(jobs) from emp;
ERROR 1054 (42S22): Unknown column 'jobs' in 'field list'
mysql> select distinct(job) from emp;
+----------+
| job      |
+----------+
| salesman |
| manager  |
| analyst  |
| clerk    |
+----------+
4 rows in set (0.00 sec)

mysql> insert into emp values('queen',7453,6000,'president',30,1999,7273,'sep'); 
Query OK, 1 row affected (0.07 sec)

mysql> select *from emp;
+--------+-------+--------+-----------+------+------+---------+-------+
| ename  | empno | salary | job       | dept | year | manager | month |
+--------+-------+--------+-----------+------+------+---------+-------+
| king   |  7839 |   5000 | salesman  |   10 | 1981 |    7566 | feb   |
| blake  |  7698 |   2850 | manager   |   30 | 1981 |    7566 | feb   |
| clark  |  7782 |   2450 | manager   |   10 | 1982 |    7566 | feb   |
| jones  |  7566 |   2975 | manager   |   20 | 1982 |    7566 | feb   |
| martin |  7654 |   1250 | analyst   |   30 | 1987 |    7698 | feb   |
| james  |  7226 |   1800 | clerk     |   30 | 1982 |    7698 | feb   |
| allen  |  7239 |   4000 | salesman  |   30 | 1987 |    7698 | feb   |
| turner |  7239 |   4000 | salesman  |   30 | 1987 |    7698 | feb   |
| ward   |  7239 |   4000 | salesman  |   30 | 1987 |    7698 | feb   |
| ford   |  7902 |   3000 | salesman  |   30 | 1987 |    7852 | feb   |
| scott  |  7788 |   3000 | salesman  |   30 | 1987 |    7852 | feb   |
| smith  |  7788 |   3000 | salesman  |   10 | 1987 |    7852 | feb   |
| adams  |  7788 |   3000 | salesman  |   10 | 1987 |    7852 | jan   |
| miller |  7788 |   3000 | salesman  |   10 | 1987 |    7852 | jan   |
| queen  |  7453 |   6000 | president |   30 | 1999 |    7273 | sep   |
+--------+-------+--------+-----------+------+------+---------+-------+
15 rows in set (0.00 sec)

mysql> select distinct(job) from emp;
+-----------+
| job       |
+-----------+
| salesman  |
| manager   |
| analyst   |
| clerk     |
| president |
+-----------+
5 rows in set (0.00 sec)

mysql> select ename from emp order by ename;
+--------+
| ename  |
+--------+
| adams  |
| allen  |
| blake  |
| clark  |
| ford   |
| james  |
| jones  |
| king   |
| martin |
| miller |
| queen  |
| scott  |
| smith  |
| turner |
| ward   |
+--------+
15 rows in set (0.00 sec)

mysql> select ename,dept from emp order by dept;
+--------+------+
| ename  | dept |
+--------+------+
| king   |   10 |
| clark  |   10 |
| smith  |   10 |
| adams  |   10 |
| miller |   10 |
| jones  |   20 |
| blake  |   30 |
| martin |   30 |
| james  |   30 |
| allen  |   30 |
| turner |   30 |
| ward   |   30 |
| ford   |   30 |
| scott  |   30 |
| queen  |   30 |
+--------+------+
15 rows in set (0.00 sec)

mysql> select ename,job from emp order by job;
+--------+-----------+
| ename  | job       |
+--------+-----------+
| martin | analyst   |
| james  | clerk     |
| blake  | manager   |
| clark  | manager   |
| jones  | manager   |
| queen  | president |
| king   | salesman  |
| allen  | salesman  |
| turner | salesman  |
| ward   | salesman  |
| ford   | salesman  |
| scott  | salesman  |
| smith  | salesman  |
| adams  | salesman  |
| miller | salesman  |
+--------+-----------+
15 rows in set (0.00 sec)

mysql> select empno,ename,salary,(salary*0.15) as da,(salary*0.10) as pf from emp;
+-------+--------+--------+--------+--------+
| empno | ename  | salary | da     | pf     |
+-------+--------+--------+--------+--------+
|  7839 | king   |   5000 | 750.00 | 500.00 |
|  7698 | blake  |   2850 | 427.50 | 285.00 |
|  7782 | clark  |   2450 | 367.50 | 245.00 |
|  7566 | jones  |   2975 | 446.25 | 297.50 |
|  7654 | martin |   1250 | 187.50 | 125.00 |
|  7226 | james  |   1800 | 270.00 | 180.00 |
|  7239 | allen  |   4000 | 600.00 | 400.00 |
|  7239 | turner |   4000 | 600.00 | 400.00 |
|  7239 | ward   |   4000 | 600.00 | 400.00 |
|  7902 | ford   |   3000 | 450.00 | 300.00 |
|  7788 | scott  |   3000 | 450.00 | 300.00 |
|  7788 | smith  |   3000 | 450.00 | 300.00 |
|  7788 | adams  |   3000 | 450.00 | 300.00 |
|  7788 | miller |   3000 | 450.00 | 300.00 |
|  7453 | queen  |   6000 | 900.00 | 600.00 |
+-------+--------+--------+--------+--------+
15 rows in set (0.00 sec)

mysql> alter table emp add exp int;
Query OK, 0 rows affected (0.24 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update table set exp=15;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table set exp=15' at line 1
mysql> update emp set exp=15;
Query OK, 15 rows affected (0.45 sec)
Rows matched: 15  Changed: 15  Warnings: 0

mysql> select *from emp;
+--------+-------+--------+-----------+------+------+---------+-------+------+
| ename  | empno | salary | job       | dept | year | manager | month | exp  |
+--------+-------+--------+-----------+------+------+---------+-------+------+
| king   |  7839 |   5000 | salesman  |   10 | 1981 |    7566 | feb   |   15 |
| blake  |  7698 |   2850 | manager   |   30 | 1981 |    7566 | feb   |   15 |
| clark  |  7782 |   2450 | manager   |   10 | 1982 |    7566 | feb   |   15 |
| jones  |  7566 |   2975 | manager   |   20 | 1982 |    7566 | feb   |   15 |
| martin |  7654 |   1250 | analyst   |   30 | 1987 |    7698 | feb   |   15 |
| james  |  7226 |   1800 | clerk     |   30 | 1982 |    7698 | feb   |   15 |
| allen  |  7239 |   4000 | salesman  |   30 | 1987 |    7698 | feb   |   15 |
| turner |  7239 |   4000 | salesman  |   30 | 1987 |    7698 | feb   |   15 |
| ward   |  7239 |   4000 | salesman  |   30 | 1987 |    7698 | feb   |   15 |
| ford   |  7902 |   3000 | salesman  |   30 | 1987 |    7852 | feb   |   15 |
| scott  |  7788 |   3000 | salesman  |   30 | 1987 |    7852 | feb   |   15 |
| smith  |  7788 |   3000 | salesman  |   10 | 1987 |    7852 | feb   |   15 |
| adams  |  7788 |   3000 | salesman  |   10 | 1987 |    7852 | jan   |   15 |
| miller |  7788 |   3000 | salesman  |   10 | 1987 |    7852 | jan   |   15 |
| queen  |  7453 |   6000 | president |   30 | 1999 |    7273 | sep   |   15 |
+--------+-------+--------+-----------+------+------+---------+-------+------+
15 rows in set (0.00 sec)

mysql> alter table emp add date date;
Query OK, 0 rows affected (0.69 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update emp set date=curdate();
Query OK, 15 rows affected (0.05 sec)
Rows matched: 15  Changed: 15  Warnings: 0

mysql> select *from emp;
+--------+-------+--------+-----------+------+------+---------+-------+------+------------+
| ename  | empno | salary | job       | dept | year | manager | month | exp  | date       |
+--------+-------+--------+-----------+------+------+---------+-------+------+------------+
| king   |  7839 |   5000 | salesman  |   10 | 1981 |    7566 | feb   |   15 | 2023-01-06 |
| blake  |  7698 |   2850 | manager   |   30 | 1981 |    7566 | feb   |   15 | 2023-01-06 |
| clark  |  7782 |   2450 | manager   |   10 | 1982 |    7566 | feb   |   15 | 2023-01-06 |
| jones  |  7566 |   2975 | manager   |   20 | 1982 |    7566 | feb   |   15 | 2023-01-06 |
| martin |  7654 |   1250 | analyst   |   30 | 1987 |    7698 | feb   |   15 | 2023-01-06 |
| james  |  7226 |   1800 | clerk     |   30 | 1982 |    7698 | feb   |   15 | 2023-01-06 |
| allen  |  7239 |   4000 | salesman  |   30 | 1987 |    7698 | feb   |   15 | 2023-01-06 |
| turner |  7239 |   4000 | salesman  |   30 | 1987 |    7698 | feb   |   15 | 2023-01-06 |
| ward   |  7239 |   4000 | salesman  |   30 | 1987 |    7698 | feb   |   15 | 2023-01-06 |
| ford   |  7902 |   3000 | salesman  |   30 | 1987 |    7852 | feb   |   15 | 2023-01-06 |
| scott  |  7788 |   3000 | salesman  |   30 | 1987 |    7852 | feb   |   15 | 2023-01-06 |
| smith  |  7788 |   3000 | salesman  |   10 | 1987 |    7852 | feb   |   15 | 2023-01-06 |
| adams  |  7788 |   3000 | salesman  |   10 | 1987 |    7852 | jan   |   15 | 2023-01-06 |
| miller |  7788 |   3000 | salesman  |   10 | 1987 |    7852 | jan   |   15 | 2023-01-06 |
| queen  |  7453 |   6000 | president |   30 | 1999 |    7273 | sep   |   15 | 2023-01-06 |
+--------+-------+--------+-----------+------+------+---------+-------+------+------------+
15 rows in set (0.00 sec)

mysql> alter table emp drop month;
Query OK, 0 rows affected (0.34 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table emp rename column date to year;
ERROR 1060 (42S21): Duplicate column name 'year'
mysql> select *from emp;
+--------+-------+--------+-----------+------+------+---------+------+------------+
| ename  | empno | salary | job       | dept | year | manager | exp  | date       |
+--------+-------+--------+-----------+------+------+---------+------+------------+
| king   |  7839 |   5000 | salesman  |   10 | 1981 |    7566 |   15 | 2023-01-06 |
| blake  |  7698 |   2850 | manager   |   30 | 1981 |    7566 |   15 | 2023-01-06 |
| clark  |  7782 |   2450 | manager   |   10 | 1982 |    7566 |   15 | 2023-01-06 |
| jones  |  7566 |   2975 | manager   |   20 | 1982 |    7566 |   15 | 2023-01-06 |
| martin |  7654 |   1250 | analyst   |   30 | 1987 |    7698 |   15 | 2023-01-06 |
| james  |  7226 |   1800 | clerk     |   30 | 1982 |    7698 |   15 | 2023-01-06 |
| allen  |  7239 |   4000 | salesman  |   30 | 1987 |    7698 |   15 | 2023-01-06 |
| turner |  7239 |   4000 | salesman  |   30 | 1987 |    7698 |   15 | 2023-01-06 |
| ward   |  7239 |   4000 | salesman  |   30 | 1987 |    7698 |   15 | 2023-01-06 |
| ford   |  7902 |   3000 | salesman  |   30 | 1987 |    7852 |   15 | 2023-01-06 |
| scott  |  7788 |   3000 | salesman  |   30 | 1987 |    7852 |   15 | 2023-01-06 |
| smith  |  7788 |   3000 | salesman  |   10 | 1987 |    7852 |   15 | 2023-01-06 |
| adams  |  7788 |   3000 | salesman  |   10 | 1987 |    7852 |   15 | 2023-01-06 |
| miller |  7788 |   3000 | salesman  |   10 | 1987 |    7852 |   15 | 2023-01-06 |
| queen  |  7453 |   6000 | president |   30 | 1999 |    7273 |   15 | 2023-01-06 |
+--------+-------+--------+-----------+------+------+---------+------+------------+
15 rows in set (0.01 sec)

mysql> alter table emp drop exp;
Query OK, 0 rows affected (0.25 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> slect *from emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'slect *from emp' at line 1
mysql> select *from emp;
+--------+-------+--------+-----------+------+------+---------+------------+
| ename  | empno | salary | job       | dept | year | manager | date       |
+--------+-------+--------+-----------+------+------+---------+------------+
| king   |  7839 |   5000 | salesman  |   10 | 1981 |    7566 | 2023-01-06 |
| blake  |  7698 |   2850 | manager   |   30 | 1981 |    7566 | 2023-01-06 |
| clark  |  7782 |   2450 | manager   |   10 | 1982 |    7566 | 2023-01-06 |
| jones  |  7566 |   2975 | manager   |   20 | 1982 |    7566 | 2023-01-06 |
| martin |  7654 |   1250 | analyst   |   30 | 1987 |    7698 | 2023-01-06 |
| james  |  7226 |   1800 | clerk     |   30 | 1982 |    7698 | 2023-01-06 |
| allen  |  7239 |   4000 | salesman  |   30 | 1987 |    7698 | 2023-01-06 |
| turner |  7239 |   4000 | salesman  |   30 | 1987 |    7698 | 2023-01-06 |
| ward   |  7239 |   4000 | salesman  |   30 | 1987 |    7698 | 2023-01-06 |
| ford   |  7902 |   3000 | salesman  |   30 | 1987 |    7852 | 2023-01-06 |
| scott  |  7788 |   3000 | salesman  |   30 | 1987 |    7852 | 2023-01-06 |
| smith  |  7788 |   3000 | salesman  |   10 | 1987 |    7852 | 2023-01-06 |
| adams  |  7788 |   3000 | salesman  |   10 | 1987 |    7852 | 2023-01-06 |
| miller |  7788 |   3000 | salesman  |   10 | 1987 |    7852 | 2023-01-06 |
| queen  |  7453 |   6000 | president |   30 | 1999 |    7273 | 2023-01-06 |
+--------+-------+--------+-----------+------+------+---------+------------+
15 rows in set (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| CSESEC4            |
| E2CSE4             |
| ass                |
| bakery             |
| company            |
| example            |
| func               |
| information_schema |
| keywords           |
| lab                |
| lab1               |
| lab5               |
| linuxhint          |
| manual             |
| mom                |
| mysql              |
| performance_schema |
| rel                |
| relation           |
| seminar            |
| std                |
| sys                |
| tcl                |
| types              |
+--------------------+
24 rows in set (0.00 sec)

mysql> use std;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+---------------+
| Tables_in_std |
+---------------+
| combine       |
| dad           |
| daddu         |
| megha         |
| sai           |
| somuu         |
| student       |
+---------------+
7 rows in set (0.01 sec)

mysql> select *from somuu;
+------+---------+----------+--------+
| sid  | sname   | age      | sec    |
+------+---------+----------+--------+
|    1 | meghana | 19:20:10 |   NULL |
|    1 | meghana | 11:19:29 |   NULL |
|    2 | prabha  | 11:22:25 |  12.23 |
|    3 | surya   | 11:23:50 |   1.45 |
|    3 | surya   | 11:24:32 |   1.46 |
|    3 | surya   | 11:25:19 |   1.00 |
|    3 | surya   | 11:25:36 |   2.00 |
|    3 | surya   | 11:26:19 |  12.57 |
|    3 | surya   | 11:28:12 |  12.58 |
|    4 | sai     | 11:29:12 |   NULL |
|    5 | mahi    | 00:00:00 | 123.35 |
+------+---------+----------+--------+
11 rows in set (0.00 sec)

mysql> select *from dad;
Empty set (0.00 sec)

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

mysql> create database 10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '10' at line 1
mysql> create database lab10;
Query OK, 1 row affected (0.11 sec)

mysql> use lab10;
Database changed
mysql> create table nullest(sid int not null,firstname varchar(20),middlename varchar(20),lastname varchar(20),marks int);
Query OK, 0 rows affected (0.67 sec)

mysql> insert into nullest values(1,'a','b','c',70);
Query OK, 1 row affected (0.07 sec)

mysql> insert into nullest values(2,'d','e','f',75);
Query OK, 1 row affected (0.07 sec)

mysql> insert into nullest values(3,'g','h','i',null);
Query OK, 1 row affected (0.06 sec)

mysql> insert into nullest values(4,'null','j','k',78);
Query OK, 1 row affected (0.18 sec)

mysql> insert into nullest values(5,'i','null','m',80);
Query OK, 1 row affected (0.07 sec)

mysql> insert into nullest values(6,'n','o','p',85);
Query OK, 1 row affected (0.07 sec)

mysql> insert into nullest values(7,'null','null','q',88);
Query OK, 1 row affected (0.09 sec)

mysql> insert into nullest values(8,'r','s','t',null);
Query OK, 1 row affected (0.20 sec)

mysql> insert into nullest values(9,null,null,null,90);
Query OK, 1 row affected (0.08 sec)


mysql> select *from nullest;
+-----+-----------+------------+----------+-------+
| sid | firstname | middlename | lastname | marks |
+-----+-----------+------------+----------+-------+
|   1 | a         | b          | c        |    70 |
|   2 | d         | e          | f        |    75 |
|   3 | g         | h          | i        |  NULL |
|   4 | null      | j          | k        |    78 |
|   5 | i         | null       | m        |    80 |
|   6 | n         | o          | p        |    85 |
|   7 | null      | null       | q        |    88 |
|   8 | r         | s          | t        |  NULL |
|   9 | NULL      | NULL       | NULL     |    90 |
+-----+-----------+------------+----------+-------+
9 rows in set (0.01 sec)

mysql> select sid,firstname,middlename,lastname from nullest where marks is not null;
+-----+-----------+------------+----------+
| sid | firstname | middlename | lastname |
+-----+-----------+------------+----------+
|   1 | a         | b          | c        |
|   2 | d         | e          | f        |
|   4 | null      | j          | k        |
|   5 | i         | null       | m        |
|   6 | n         | o          | p        |
|   7 | null      | null       | q        |
|   9 | NULL      | NULL       | NULL     |
+-----+-----------+------------+----------+
7 rows in set (0.01 sec)

mysql> select sid,firstname,middlename,lastname from nullest where marks is null;
+-----+-----------+------------+----------+
| sid | firstname | middlename | lastname |
+-----+-----------+------------+----------+
|   3 | g         | h          | i        |
|   8 | r         | s          | t        |
+-----+-----------+------------+----------+
2 rows in set (0.00 sec)

mysql> select sid,firstname,middlename,lastname,marks from nullest where marks i
s null;
+-----+-----------+------------+----------+-------+
| sid | firstname | middlename | lastname | marks |
+-----+-----------+------------+----------+-------+
|   3 | g         | h          | i        |  NULL |
|   8 | r         | s          | t        |  NULL |
+-----+-----------+------------+----------+-------+
2 rows in set (0.01 sec)

mysql> select sid,firstname,middlename,ifnull(marks,0)as marks from nullest;
+-----+-----------+------------+-------+
| sid | firstname | middlename | marks |
+-----+-----------+------------+-------+
|   1 | a         | b          |    70 |
|   2 | d         | e          |    75 |
|   3 | g         | h          |     0 |
|   4 | null      | j          |    78 |
|   5 | i         | null       |    80 |
|   6 | n         | o          |    85 |
|   7 | null      | null       |    88 |
|   8 | r         | s          |     0 |
|   9 | NULL      | NULL       |    90 |
+-----+-----------+------------+-------+
9 rows in set (0.00 sec)

mysql> select sid,coalesce(firstname,middlename,lastname)as name,marks from nullest;
+-----+------+-------+
| sid | name | marks |
+-----+------+-------+
|   1 | a    |    70 |
|   2 | d    |    75 |
|   3 | g    |  NULL |
|   4 | null |    78 |
|   5 | i    |    80 |
|   6 | n    |    85 |
|   7 | null |    88 |
|   8 | r    |  NULL |
|   9 | NULL |    90 |
+-----+------+-------+
9 rows in set (0.00 sec)

mysql> create table logocal(sid int,name varchar(20),age int);
Query OK, 0 rows affected (0.86 sec)

mysql> insert into logocal values(1,'ajay',19);
Query OK, 1 row affected (0.10 sec)

mysql> insert into logocal values(2,'venky',29);
Query OK, 1 row affected (0.08 sec)

mysql> insert into logocal values(3,'rohith',27);
Query OK, 1 row affected (0.08 sec)

mysql> use lab10;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+-----------------+
| Tables_in_lab10 |
+-----------------+
| logocal         |
| nullest         |
+-----------------+
2 rows in set (0.00 sec)

mysql> select *from logocal;
+------+--------+------+
| sid  | name   | age  |
+------+--------+------+
|    1 | ajay   |   19 |
|    2 | venky  |   29 |
|    3 | rohith |   27 |
+------+--------+------+
3 rows in set (0.00 sec)

mysql> insert into logocal values(4,'vishwa',27);
Query OK, 1 row affected (0.45 sec)

mysql> insert into logocal values(5,'sanjar',29);
Query OK, 1 row affected (0.10 sec)

mysql> select * from logocal;
+------+--------+------+
| sid  | name   | age  |
+------+--------+------+
|    1 | ajay   |   19 |
|    2 | venky  |   29 |
|    3 | rohith |   27 |
|    4 | vishwa |   27 |
|    5 | sanjar |   29 |
+------+--------+------+
5 rows in set (0.00 sec)

mysql> select *from logocal where sid>3 and age>=20);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> select *from logocal where sid>3 and age>=20;
+------+--------+------+
| sid  | name   | age  |
+------+--------+------+
|    4 | vishwa |   27 |
|    5 | sanjar |   29 |
+------+--------+------+
2 rows in set (0.00 sec)

mysql> select *from logocal where sid>3 or age>=20;
+------+--------+------+
| sid  | name   | age  |
+------+--------+------+
|    2 | venky  |   29 |
|    3 | rohith |   27 |
|    4 | vishwa |   27 |
|    5 | sanjar |   29 |
+------+--------+------+
4 rows in set (0.00 sec)

mysql> select *from logocal where age in(20,29);
+------+--------+------+
| sid  | name   | age  |
+------+--------+------+
|    2 | venky  |   29 |
|    5 | sanjar |   29 |
+------+--------+------+
2 rows in set (0.00 sec)

mysql> select *from logocal where age between 20 and 27;
+------+--------+------+
| sid  | name   | age  |
+------+--------+------+
|    3 | rohith |   27 |
|    4 | vishwa |   27 |
+------+--------+------+
2 rows in set (0.00 sec)

mysql> select *from logocal where not age>27;
+------+--------+------+
| sid  | name   | age  |
+------+--------+------+
|    1 | ajay   |   19 |
|    3 | rohith |   27 |
|    4 | vishwa |   27 |
+------+--------+------+
3 rows in set (0.00 sec)

mysql> select *from logocal where 27>all(select age from logocal);
Empty set (0.00 sec)

mysql> select *from logocal where 27>any(select age from logocal);
+------+--------+------+
| sid  | name   | age  |
+------+--------+------+
|    1 | ajay   |   19 |
|    2 | venky  |   29 |
|    3 | rohith |   27 |
|    4 | vishwa |   27 |
|    5 | sanjar |   29 |
+------+--------+------+
5 rows in set (0.00 sec)

mysql> select *from logocal where name like 'p%';
Empty set (0.00 sec)

mysql> select *from logocal where name like 'v%';
+------+--------+------+
| sid  | name   | age  |
+------+--------+------+
|    2 | venky  |   29 |
|    4 | vishwa |   27 |
+------+--------+------+
2 rows in set (0.00 sec)

mysql> select *from logocal where exists(select age from logocal where age>29);
Empty set (0.00 sec)


