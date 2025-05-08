mysql> use example;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select lpad("world",10,"*");
+----------------------+
| lpad("world",10,"*") |
+----------------------+
| *****world           |
+----------------------+
1 row in set (0.00 sec)

mysql> select rpad("world",10,"*");
+----------------------+
| rpad("world",10,"*") |
+----------------------+
| world*****           |
+----------------------+
1 row in set (0.00 sec)

mysql> select *from megha;
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    4 | paandu |    0 |
|    4 | paandu | NULL |
+------+--------+------+
5 rows in set (0.00 sec)

mysql> select *from sai;
+------+------+------+
| sid  | city | sex  |
+------+------+------+
|    1 | snd  | m    |
|    2 | ajd  | f    |
|    3 | dhd  | m    |
+------+------+------+
3 rows in set (0.00 sec)


mysql> select sid,coalesce(sid,sname) from megha;
+------+---------------------+
| sid  | coalesce(sid,sname) |
+------+---------------------+
|    1 | 1                   |
|    2 | 2                   |
|    3 | 3                   |
|    4 | 4                   |
|    4 | 4                   |
+------+---------------------+
5 rows in set (0.00 sec)

mysql> select coalesce(sid,sname) from megha;
+---------------------+
| coalesce(sid,sname) |
+---------------------+
| 1                   |
| 2                   |
| 3                   |
| 4                   |
| 4                   |
+---------------------+
5 rows in set (0.00 sec)

mysql> select *from megha;
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    4 | paandu |    0 |
|    4 | paandu | NULL |
+------+--------+------+
5 rows in set (0.00 sec)

mysql> update megha set sid=7 where cgpa=null;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select *from megha;
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    4 | paandu |    0 |
|    4 | paandu | NULL |
+------+--------+------+
5 rows in set (0.00 sec)

mysql> update megha set sid=7 where cgpa=0;
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from megha;
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    7 | paandu |    0 |
|    4 | paandu | NULL |
+------+--------+------+
5 rows in set (0.00 sec)

mysql> select *from megha where sid=(select max(sid) from megha);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    7 | paandu |    0 |
+------+--------+------+
1 row in set (0.00 sec)

mysql> select coalesce (sname) from megha;
+------------------+
| coalesce (sname) |
+------------------+
| mega             |
| sai              |
| prassu           |
| paandu           |
| paandu           |
+------------------+
5 rows in set (0.00 sec)

mysql> select coalesce (cgpa) from megha;
+-----------------+
| coalesce (cgpa) |
+-----------------+
|              10 |
|              10 |
|               9 |
|               0 |
|            NULL |
+-----------------+
5 rows in set (0.00 sec)

mysql> select coalesce (cgpa,sid) from megha;
+---------------------+
| coalesce (cgpa,sid) |
+---------------------+
|                  10 |
|                  10 |
|                   9 |
|                   0 |
|                   4 |
+---------------------+
5 rows in set (0.00 sec)

mysql> select max(sid) from megha where sid in('mega');
+----------+
| max(sid) |
+----------+
|     NULL |
+----------+
1 row in set, 1 warning (0.00 sec)

mysql> select sid=1 from megha where sid in('megha');
Empty set, 1 warning (0.00 sec)

mysql> select min(sid) from megha where sid in('mega');
+----------+
| min(sid) |
+----------+
|     NULL |
+----------+
1 row in set, 1 warning (0.00 sec)

mysql> select sid=1 from megha where sid in('mega');
Empty set, 1 warning (0.00 sec)

mysql> select * from megha where sid in('mega','sai','prassu');
Empty set, 3 warnings (0.00 sec)

mysql> select *from megha where sid in(select sid from megha);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    7 | paandu |    0 |
|    4 | paandu | NULL |
+------+--------+------+
5 rows in set (0.00 sec)

mysql> select *from megha where sid not in('mega');
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    7 | paandu |    0 |
|    4 | paandu | NULL |
+------+--------+------+
5 rows in set, 1 warning (0.00 sec)

mysql> select * from megha where cgpa in(10,9);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
+------+--------+------+
3 rows in set (0.00 sec)

mysql> select *from megha where sname in('mega','sai','paandu');
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    7 | paandu |    0 |
|    4 | paandu | NULL |
+------+--------+------+
4 rows in set (0.00 sec)

mysql> select * from megha where cgpa  not in(10,9);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    7 | paandu |    0 |
+------+--------+------+
1 row in set (0.00 sec)

mysql> select * from megha where cgpa not in(10);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    3 | prassu |    9 |
|    7 | paandu |    0 |
+------+--------+------+
2 rows in set (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| CSESEC4            |
| E2CSE4             |
| bakery             |
| company            |
| example            |
| information_schema |
| keywords           |
| lab                |
| lab1               |
| linuxhint          |
| mom                |
| mysql              |
| performance_schema |
| relation           |
| std                |
| sys                |
| tcl                |
+--------------------+
17 rows in set (0.01 sec)

mysql> use lab;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+---------------+
| Tables_in_lab |
+---------------+
| emp           |
| student       |
+---------------+
2 rows in set (0.00 sec)

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

mysql> use example;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select *from megha;
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    7 | paandu |    0 |
|    4 | paandu | NULL |
+------+--------+------+
5 rows in set (0.00 sec)

mysql> alter table megha add unique(sid);
Query OK, 0 rows affected (0.97 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from megha;
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    7 | paandu |    0 |
|    4 | paandu | NULL |
+------+--------+------+
5 rows in set (0.00 sec)

mysql> alter table megha add check(sid>0);
Query OK, 5 rows affected (1.06 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from megha;
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    7 | paandu |    0 |
|    4 | paandu | NULL |
+------+--------+------+
5 rows in set (0.00 sec)

mysql> alter table megha alter cgpa set default 10;
Query OK, 0 rows affected (0.50 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> insert into megha(sid,sname) values(5,'prabha');
Query OK, 1 row affected (0.09 sec)

mysql> select *from megha;
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    7 | paandu |    0 |
|    4 | paandu | NULL |
|    5 | prabha |   10 |
+------+--------+------+
6 rows in set (0.01 sec)

mysql> 


