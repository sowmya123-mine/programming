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

mysql> desc emp;
+--------+----------+------+-----+---------+-------+
| Field  | Type     | Null | Key | Default | Extra |
+--------+----------+------+-----+---------+-------+
| ename  | char(20) | YES  |     | NULL    |       |
| empno  | int      | YES  |     | NULL    |       |
| salary | int      | YES  |     | NULL    |       |
| job    | char(30) | YES  |     | NULL    |       |
+--------+----------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into emp values('king',7839,5000,'salesman');
Query OK, 1 row affected (0.41 sec)

mysql> alter table emp add dept int;
Query OK, 0 rows affected (0.60 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update emp set dept=10 where ename='king';
Query OK, 1 row affected (0.45 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> alter table emp add year int;
Query OK, 0 rows affected (0.28 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update emp set year=1981 where ename='king';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from emp;
+-------+-------+--------+----------+------+------+
| ename | empno | salary | job      | dept | year |
+-------+-------+--------+----------+------+------+
| king  |  7839 |   5000 | salesman |   10 | 1981 |
+-------+-------+--------+----------+------+------+
1 row in set (0.01 sec)

mysql> insert into emp values('blake',7698,2850,'salesman',20,1981);
Query OK, 1 row affected (0.10 sec)

mysql> select *from emp;
+-------+-------+--------+----------+------+------+
| ename | empno | salary | job      | dept | year |
+-------+-------+--------+----------+------+------+
| king  |  7839 |   5000 | salesman |   10 | 1981 |
| blake |  7698 |   2850 | salesman |   20 | 1981 |
+-------+-------+--------+----------+------+------+
2 rows in set (0.00 sec)

mysql> insert into emp values('clark',7782,2450,'clerk',10,1982);
Query OK, 1 row affected (0.08 sec)

mysql> insert into emp values('jones',7566,2975,'manager',10,1982);
Query OK, 1 row affected (0.08 sec)

mysql> insert into emp values('martin',7654,1250,'clerk',20,1987);
Query OK, 1 row affected (0.08 sec)

mysql> select *from emp;
+--------+-------+--------+----------+------+------+
| ename  | empno | salary | job      | dept | year |
+--------+-------+--------+----------+------+------+
| king   |  7839 |   5000 | salesman |   10 | 1981 |
| blake  |  7698 |   2850 | salesman |   20 | 1981 |
| clark  |  7782 |   2450 | clerk    |   10 | 1982 |
| jones  |  7566 |   2975 | manager  |   10 | 1982 |
| martin |  7654 |   1250 | clerk    |   20 | 1987 |
+--------+-------+--------+----------+------+------+
5 rows in set (0.00 sec)

mysql> select ename,emono,salary from emp;
ERROR 1054 (42S22): Unknown column 'emono' in 'field list'
mysql> select ename,empno,salary from emp;
+--------+-------+--------+
| ename  | empno | salary |
+--------+-------+--------+
| king   |  7839 |   5000 |
| blake  |  7698 |   2850 |
| clark  |  7782 |   2450 |
| jones  |  7566 |   2975 |
| martin |  7654 |   1250 |
+--------+-------+--------+
5 rows in set (0.00 sec)

mysql> update emp set job='manager' where ename='blake';
Query OK, 1 row affected (0.45 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set job='manager' where ename='clark';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from emp;
+--------+-------+--------+----------+------+------+
| ename  | empno | salary | job      | dept | year |
+--------+-------+--------+----------+------+------+
| king   |  7839 |   5000 | salesman |   10 | 1981 |
| blake  |  7698 |   2850 | manager  |   20 | 1981 |
| clark  |  7782 |   2450 | manager  |   10 | 1982 |
| jones  |  7566 |   2975 | manager  |   10 | 1982 |
| martin |  7654 |   1250 | clerk    |   20 | 1987 |
+--------+-------+--------+----------+------+------+
5 rows in set (0.00 sec)

mysql> select *from emp where job='manager';
+-------+-------+--------+---------+------+------+
| ename | empno | salary | job     | dept | year |
+-------+-------+--------+---------+------+------+
| blake |  7698 |   2850 | manager |   20 | 1981 |
| clark |  7782 |   2450 | manager |   10 | 1982 |
| jones |  7566 |   2975 | manager |   10 | 1982 |
+-------+-------+--------+---------+------+------+
3 rows in set (0.00 sec)

mysql> select ename from emp where job='manager';
+-------+
| ename |
+-------+
| blake |
| clark |
| jones |
+-------+
3 rows in set (0.00 sec)

mysql> insert into emp values('james',7226,2375,'manager',30,1982);
Query OK, 1 row affected (0.09 sec)

mysql> update emp set job='clerk' where dept=30;
Query OK, 1 row affected (0.44 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> use ass;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select *from emp;
+--------+-------+--------+----------+------+------+
| ename  | empno | salary | job      | dept | year |
+--------+-------+--------+----------+------+------+
| king   |  7839 |   5000 | salesman |   10 | 1981 |
| blake  |  7698 |   2850 | manager  |   20 | 1981 |
| clark  |  7782 |   2450 | manager  |   10 | 1982 |
| jones  |  7566 |   2975 | manager  |   10 | 1982 |
| martin |  7654 |   1250 | clerk    |   20 | 1987 |
| james  |  7226 |   2375 | clerk    |   30 | 1982 |
+--------+-------+--------+----------+------+------+
6 rows in set (0.00 sec)

mysql> select ename from emp where job='clerk' and dept=30;
+-------+
| ename |
+-------+
| james |
+-------+
1 row in set (0.00 sec)

mysql> update emp set job='salesman' where ename='martin';
Query OK, 1 row affected (0.45 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> insert into emp values('allen',7239,4000,'salesman',10,1987);
Query OK, 1 row affected (0.48 sec)

mysql> insert into emp values('turner',7239,4000,'salesman',10,1987);
Query OK, 1 row affected (0.10 sec)

mysql> insert into emp values('ward',7239,4000,'salesman',10,1987);
Query OK, 1 row affected (0.09 sec)

mysql> alter table emp add manager int;
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update table set manager=7566 ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table set manager=7566' at line 1
mysql> update emp set manager=7566 ;
Query OK, 9 rows affected (0.10 sec)
Rows matched: 9  Changed: 9  Warnings: 0

mysql> select *from emp;
+--------+-------+--------+----------+------+------+---------+
| ename  | empno | salary | job      | dept | year | manager |
+--------+-------+--------+----------+------+------+---------+
| king   |  7839 |   5000 | salesman |   10 | 1981 |    7566 |
| blake  |  7698 |   2850 | manager  |   20 | 1981 |    7566 |
| clark  |  7782 |   2450 | manager  |   10 | 1982 |    7566 |
| jones  |  7566 |   2975 | manager  |   10 | 1982 |    7566 |
| martin |  7654 |   1250 | salesman |   20 | 1987 |    7566 |
| james  |  7226 |   2375 | clerk    |   30 | 1982 |    7566 |
| allen  |  7239 |   4000 | salesman |   10 | 1987 |    7566 |
| turner |  7239 |   4000 | salesman |   10 | 1987 |    7566 |
| ward   |  7239 |   4000 | salesman |   10 | 1987 |    7566 |
+--------+-------+--------+----------+------+------+---------+
9 rows in set (0.00 sec)

mysql> update emp set manager=7698 where ename='martin';
Query OK, 1 row affected (0.60 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set manager=7698 where ename='allen'
    -> ;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set manager=7698 where ename='turner';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set manager=7698 where ename='james';
Query OK, 1 row affected (0.11 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set manager=7698 where ename='ward';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select ename,job from emp where manager=7698;
+--------+----------+
| ename  | job      |
+--------+----------+
| martin | salesman |
| james  | clerk    |
| allen  | salesman |
| turner | salesman |
| ward   | salesman |
+--------+----------+
5 rows in set (0.00 sec)

mysql> update emp set dept=20 where job='clerk';
Query OK, 1 row affected (0.45 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set job='analyst' where salary=1250;
Query OK, 1 row affected (0.47 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select distinct(job) from emp where dept=20;
+---------+
| job     |
+---------+
| manager |
| analyst |
| clerk   |
+---------+
3 rows in set (0.00 sec)

mysql> insert into emp values('scott',7788,3000,'salesman',10,1987,7852);
Query OK, 1 row affected (0.46 sec)

mysql> select ename,empno,salary from emp where salary between 2000 and 3000;
+-------+-------+--------+
| ename | empno | salary |
+-------+-------+--------+
| blake |  7698 |   2850 |
| clark |  7782 |   2450 |
| jones |  7566 |   2975 |
| james |  7226 |   2375 |
| ford  |  7902 |   3000 |
| scott |  7788 |   3000 |
+-------+-------+--------+
6 rows in set (0.00 sec)

mysql> update emp set salary=1800 where enam='james';
ERROR 1054 (42S22): Unknown column 'enam' in 'where clause'
mysql> update emp set salary=1800 where ename='james';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select ename,empno,salary from emp where salary between 2000 and 3000;
+-------+-------+--------+
| ename | empno | salary |
+-------+-------+--------+
| blake |  7698 |   2850 |
| clark |  7782 |   2450 |
| jones |  7566 |   2975 |
| ford  |  7902 |   3000 |
| scott |  7788 |   3000 |
+-------+-------+--------+
5 rows in set (0.00 sec)

mysql> select *from emp;
+--------+-------+--------+----------+------+------+---------+
| ename  | empno | salary | job      | dept | year | manager |
+--------+-------+--------+----------+------+------+---------+
| king   |  7839 |   5000 | salesman |   10 | 1981 |    7566 |
| blake  |  7698 |   2850 | manager  |   20 | 1981 |    7566 |
| clark  |  7782 |   2450 | manager  |   10 | 1982 |    7566 |
| jones  |  7566 |   2975 | manager  |   10 | 1982 |    7566 |
| martin |  7654 |   1250 | analyst  |   20 | 1987 |    7698 |
| james  |  7226 |   1800 | clerk    |   20 | 1982 |    7698 |
| allen  |  7239 |   4000 | salesman |   10 | 1987 |    7698 |
| turner |  7239 |   4000 | salesman |   10 | 1987 |    7698 |
| ward   |  7239 |   4000 | salesman |   10 | 1987 |    7698 |
| ford   |  7902 |   3000 | salesman |   10 | 1987 |    7852 |
| scott  |  7788 |   3000 | salesman |   10 | 1987 |    7852 |
+--------+-------+--------+----------+------+------+---------+
11 rows in set (0.00 sec)

mysql> update emp set dept=30 ;
Query OK, 11 rows affected (0.45 sec)
Rows matched: 11  Changed: 11  Warnings: 0

mysql> update emp set dept=10 where ename='king';
Query OK, 1 row affected (0.47 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set dept=10 where ename='clark';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set dept=10 where ename='jones';
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set dept=20 where ename='jones';
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select ename,empno,dept from emp where dept in(10,20);
+-------+-------+------+
| ename | empno | dept |
+-------+-------+------+
| king  |  7839 |   10 |
| clark |  7782 |   10 |
| jones |  7566 |   20 |
+-------+-------+------+
3 rows in set (0.00 sec)

mysql> select ename from emp where ename like 's%';
+-------+
| ename |
+-------+
| scott |
+-------+
1 row in set (0.00 sec)

mysql> insert into emp values('smith',7788,3000,'salesman',10,1987,7852);
Query OK, 1 row affected (0.48 sec)

mysql> select ename from emp where ename like 's%';
+-------+
| ename |
+-------+
| scott |
| smith |
+-------+
2 rows in set (0.00 sec)

mysql> select ename from emp where ename like '%a%';
+--------+
| ename  |
+--------+
| blake  |
| clark  |
| martin |
| james  |
| allen  |
| ward   |
+--------+
6 rows in set (0.00 sec)

mysql> alter table emp add month char(20);
Query OK, 0 rows affected (0.64 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> update emp set month='feb';
Query OK, 12 rows affected (0.46 sec)
Rows matched: 12  Changed: 12  Warnings: 0

mysql> update emp set month='jan' where ename='adams';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

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
+--------+-------+--------+----------+------+------+---------+-------+
12 rows in set (0.00 sec)

mysql> insert into emp values('adams',7788,3000,'salesman',10,1987,7852,'jan');
Query OK, 1 row affected (0.45 sec)

mysql> insert into emp values('miller',7788,3000,'salesman',10,1987,7852,'jan');
Query OK, 1 row affected (0.10 sec)

mysql> select ename,month from emp where month='jan';
+--------+-------+
| ename  | month |
+--------+-------+
| adams  | jan   |
| miller | jan   |
+--------+-------+
2 rows in set (0.00 sec)

