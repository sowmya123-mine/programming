Your MySQL connection id is 298
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
17 rows in set (0.03 sec)

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
|    5 | prabha |   10 |
+------+--------+------+
6 rows in set (0.00 sec)

mysql> select *from sai;
+------+------+------+
| sid  | city | sex  |
+------+------+------+
|    1 | snd  | m    |
|    2 | ajd  | f    |
|    3 | dhd  | m    |
+------+------+------+
3 rows in set (0.00 sec)

mysql> select *from megha where sid>(select sid from megha where sid>5);
Empty set (0.00 sec)

mysql> select *from megha where sid in(select sid from megha where sid>2);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    3 | prassu |    9 |
|    4 | paandu | NULL |
|    5 | prabha |   10 |
|    7 | paandu |    0 |
+------+--------+------+
4 rows in set (0.00 sec)

mysql> select *from megha where sid in(select sid from megha where sid>4);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    5 | prabha |   10 |
|    7 | paandu |    0 |
+------+--------+------+
2 rows in set (0.00 sec)

mysql> select *from megha where sid in(select sid from megha where sid>5);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    7 | paandu |    0 |
+------+--------+------+
1 row in set (0.00 sec)

mysql> select *from megha where sid in(select sid from megha where sid>3);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    4 | paandu | NULL |
|    5 | prabha |   10 |
|    7 | paandu |    0 |
+------+--------+------+
3 rows in set (0.00 sec)

mysql> select *from megha where sid in(select sid from megha where sid>2);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    3 | prassu |    9 |
|    4 | paandu | NULL |
|    5 | prabha |   10 |
|    7 | paandu |    0 |
+------+--------+------+
4 rows in set (0.00 sec)

mysql> select *from megha where sid in(select sid from megha where sid>1);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    4 | paandu | NULL |
|    5 | prabha |   10 |
|    7 | paandu |    0 |
+------+--------+------+
5 rows in set (0.00 sec)

mysql> select *from megha where sid>(select sid from megha where sid>5);
Empty set (0.00 sec)

mysql> select *from megha where sid>(select sid from megha where sid=4);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    5 | prabha |   10 |
|    7 | paandu |    0 |
+------+--------+------+
2 rows in set (0.00 sec)

mysql> select *from megha where sid>(select sid from megha where sid=4);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    5 | prabha |   10 |
|    7 | paandu |    0 |
+------+--------+------+
2 rows in set (0.00 sec)

mysql> select *from megha where sid>(select sid from megha where sid=5);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    7 | paandu |    0 |
+------+--------+------+
1 row in set (0.00 sec)

mysql> insert into megha values(8,'asri',10);
Query OK, 1 row affected (0.08 sec)

mysql> insert into sai select *from megha where sid in(select sid from megha);
Query OK, 7 rows affected (0.08 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> select *from sai;
+------+--------+------+
| sid  | city   | sex  |
+------+--------+------+
|    1 | snd    | m    |
|    2 | ajd    | f    |
|    3 | dhd    | m    |
|    1 | mega   | 10   |
|    2 | sai    | 10   |
|    3 | prassu | 9    |
|    7 | paandu | 0    |
|    4 | paandu | NULL |
|    5 | prabha | 10   |
|    8 | asri   | 10   |
+------+--------+------+
10 rows in set (0.00 sec)

ERROR 1109 (42S02): Unknown table 'sid' in MULTI DELETE
mysql> select *from sai;
+------+--------+------+
| sid  | city   | sex  |
+------+--------+------+
|    1 | snd    | m    |
|    2 | ajd    | f    |
|    3 | dhd    | m    |
|    1 | mega   | 10   |
|    2 | sai    | 10   |
|    3 | prassu | 9    |
|    7 | paandu | 0    |
|    4 | paandu | NULL |
|    5 | prabha | 10   |
|    8 | asri   | 10   |
+------+--------+------+
10 rows in set (0.00 sec)

mysql> select *from sai where 10>all(select *from sai);
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> select *from sai where 10>all(select  sid from sai);
+------+--------+------+
| sid  | city   | sex  |
+------+--------+------+
|    1 | snd    | m    |
|    2 | ajd    | f    |
|    3 | dhd    | m    |
|    1 | mega   | 10   |
|    2 | sai    | 10   |
|    3 | prassu | 9    |
|    7 | paandu | 0    |
|    4 | paandu | NULL |
|    5 | prabha | 10   |
|    8 | asri   | 10   |
+------+--------+------+
10 rows in set (0.00 sec)

mysql> select *from sai where 7>all(select  sid from sai);
Empty set (0.00 sec)

mysql> select *from sai where 7>any(select  sid from sai);
+------+--------+------+
| sid  | city   | sex  |
+------+--------+------+
|    1 | snd    | m    |
|    2 | ajd    | f    |
|    3 | dhd    | m    |
|    1 | mega   | 10   |
|    2 | sai    | 10   |
|    3 | prassu | 9    |
|    7 | paandu | 0    |
|    4 | paandu | NULL |
|    5 | prabha | 10   |
|    8 | asri   | 10   |
+------+--------+------+
10 rows in set (0.00 sec)

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
|    8 | asri   |   10 |
+------+--------+------+
7 rows in set (0.00 sec)

mysql> select *from megha where 7<any(select cgpa from megha);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    7 | paandu |    0 |
|    4 | paandu | NULL |
|    5 | prabha |   10 |
|    8 | asri   |   10 |
+------+--------+------+
7 rows in set (0.00 sec)

mysql> select *from megha where sid<any(select cgpa from megha);
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    7 | paandu |    0 |
|    4 | paandu | NULL |
|    5 | prabha |   10 |
|    8 | asri   |   10 |
+------+--------+------+
7 rows in set (0.00 sec)

mysql> select *from megha where sid<all(select cgpa from megha);
Empty set (0.00 sec)

mysql> select *from megha exists(select sid from megha where sid>7);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'exists(select sid from megha where sid>7)' at line 1
mysql> select *from megha where  exists(select sid from megha where sid>7)
    -> ;
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    7 | paandu |    0 |
|    4 | paandu | NULL |
|    5 | prabha |   10 |
|    8 | asri   |   10 |
+------+--------+------+
7 rows in set (0.00 sec)

mysql> select *from megha where sname like 'pa%';
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    7 | paandu |    0 |
|    4 | paandu | NULL |
+------+--------+------+
2 rows in set (0.00 sec)


mysql> select *from megha where sname like' pa';
Empty set (0.00 sec)

mysql> select *from megha where sname like 'paandu';
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    7 | paandu |    0 |
|    4 | paandu | NULL |
+------+--------+------+
2 rows in set (0.00 sec)

mysql> use example;
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
|    5 | prabha |   10 |
|    8 | asri   |   10 |
+------+--------+------+
7 rows in set (0.00 sec)

mysql> select *from sai;
+------+--------+------+
| sid  | city   | sex  |
+------+--------+------+
|    1 | snd    | m    |
|    2 | ajd    | f    |
|    3 | dhd    | m    |
|    1 | mega   | 10   |
|    2 | sai    | 10   |
|    3 | prassu | 9    |
|    7 | paandu | 0    |
|    4 | paandu | NULL |
|    5 | prabha | 10   |
|    8 | asri   | 10   |
+------+--------+------+
10 rows in set (0.00 sec)

mysql> select *from megha natural join sai;
+------+--------+------+--------+------+
| sid  | sname  | cgpa | city   | sex  |
+------+--------+------+--------+------+
|    1 | mega   |   10 | snd    | m    |
|    2 | sai    |   10 | ajd    | f    |
|    3 | prassu |    9 | dhd    | m    |
|    1 | mega   |   10 | mega   | 10   |
|    2 | sai    |   10 | sai    | 10   |
|    3 | prassu |    9 | prassu | 9    |
|    7 | paandu |    0 | paandu | 0    |
|    4 | paandu | NULL | paandu | NULL |
|    5 | prabha |   10 | prabha | 10   |
|    8 | asri   |   10 | asri   | 10   |
+------+--------+------+--------+------+
10 rows in set (0.00 sec)

mysql> insert into sai values(1,'ap','m');
Query OK, 1 row affected (0.44 sec)

mysql> select *from sai;
+------+--------+------+
| sid  | city   | sex  |
+------+--------+------+
|    1 | snd    | m    |
|    2 | ajd    | f    |
|    3 | dhd    | m    |
|    1 | mega   | 10   |
|    2 | sai    | 10   |
|    3 | prassu | 9    |
|    7 | paandu | 0    |
|    4 | paandu | NULL |
|    5 | prabha | 10   |
|    8 | asri   | 10   |
|    1 | ap     | m    |
+------+--------+------+
11 rows in set (0.00 sec)

mysql> select *from megha natural join sai;
+------+--------+------+--------+------+
| sid  | sname  | cgpa | city   | sex  |
+------+--------+------+--------+------+
|    1 | mega   |   10 | snd    | m    |
|    2 | sai    |   10 | ajd    | f    |
|    3 | prassu |    9 | dhd    | m    |
|    1 | mega   |   10 | mega   | 10   |
|    2 | sai    |   10 | sai    | 10   |
|    3 | prassu |    9 | prassu | 9    |
|    7 | paandu |    0 | paandu | 0    |
|    4 | paandu | NULL | paandu | NULL |
|    5 | prabha |   10 | prabha | 10   |
|    8 | asri   |   10 | asri   | 10   |
|    1 | mega   |   10 | ap     | m    |
+------+--------+------+--------+------+
11 rows in set (0.00 sec)

mysql> update sai set sid=9 where city='ap';
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
|    5 | prabha |   10 |
|    8 | asri   |   10 |
+------+--------+------+
7 rows in set (0.00 sec)

mysql> select *from sai;
+------+--------+------+
| sid  | city   | sex  |
+------+--------+------+
|    1 | snd    | m    |
|    2 | ajd    | f    |
|    3 | dhd    | m    |
|    1 | mega   | 10   |
|    2 | sai    | 10   |
|    3 | prassu | 9    |
|    7 | paandu | 0    |
|    4 | paandu | NULL |
|    5 | prabha | 10   |
|    8 | asri   | 10   |
|    9 | ap     | m    |
+------+--------+------+
11 rows in set (0.00 sec)

mysql> select *from megha natural join sai;
+------+--------+------+--------+------+
| sid  | sname  | cgpa | city   | sex  |
+------+--------+------+--------+------+
|    1 | mega   |   10 | snd    | m    |
|    2 | sai    |   10 | ajd    | f    |
|    3 | prassu |    9 | dhd    | m    |
|    1 | mega   |   10 | mega   | 10   |
|    2 | sai    |   10 | sai    | 10   |
|    3 | prassu |    9 | prassu | 9    |
|    7 | paandu |    0 | paandu | 0    |
|    4 | paandu | NULL | paandu | NULL |
|    5 | prabha |   10 | prabha | 10   |
|    8 | asri   |   10 | asri   | 10   |
+------+--------+------+--------+------+
10 rows in set (0.00 sec)

mysql> select *from megha inner join sai;
+------+--------+------+------+--------+------+
| sid  | sname  | cgpa | sid  | city   | sex  |
+------+--------+------+------+--------+------+
|    8 | asri   |   10 |    1 | snd    | m    |
|    5 | prabha |   10 |    1 | snd    | m    |
|    4 | paandu | NULL |    1 | snd    | m    |
|    7 | paandu |    0 |    1 | snd    | m    |
|    3 | prassu |    9 |    1 | snd    | m    |
|    2 | sai    |   10 |    1 | snd    | m    |
|    1 | mega   |   10 |    1 | snd    | m    |
|    8 | asri   |   10 |    2 | ajd    | f    |
|    5 | prabha |   10 |    2 | ajd    | f    |
|    4 | paandu | NULL |    2 | ajd    | f    |
|    7 | paandu |    0 |    2 | ajd    | f    |
|    3 | prassu |    9 |    2 | ajd    | f    |
|    2 | sai    |   10 |    2 | ajd    | f    |
|    1 | mega   |   10 |    2 | ajd    | f    |
|    8 | asri   |   10 |    3 | dhd    | m    |
|    5 | prabha |   10 |    3 | dhd    | m    |
|    4 | paandu | NULL |    3 | dhd    | m    |
|    7 | paandu |    0 |    3 | dhd    | m    |
|    3 | prassu |    9 |    3 | dhd    | m    |
|    2 | sai    |   10 |    3 | dhd    | m    |
|    1 | mega   |   10 |    3 | dhd    | m    |
|    8 | asri   |   10 |    1 | mega   | 10   |
|    5 | prabha |   10 |    1 | mega   | 10   |
|    4 | paandu | NULL |    1 | mega   | 10   |
|    7 | paandu |    0 |    1 | mega   | 10   |
|    3 | prassu |    9 |    1 | mega   | 10   |
|    2 | sai    |   10 |    1 | mega   | 10   |
|    1 | mega   |   10 |    1 | mega   | 10   |
|    8 | asri   |   10 |    2 | sai    | 10   |
|    5 | prabha |   10 |    2 | sai    | 10   |
|    4 | paandu | NULL |    2 | sai    | 10   |
|    7 | paandu |    0 |    2 | sai    | 10   |
|    3 | prassu |    9 |    2 | sai    | 10   |
|    2 | sai    |   10 |    2 | sai    | 10   |
|    1 | mega   |   10 |    2 | sai    | 10   |
|    8 | asri   |   10 |    3 | prassu | 9    |
|    5 | prabha |   10 |    3 | prassu | 9    |
|    4 | paandu | NULL |    3 | prassu | 9    |
|    7 | paandu |    0 |    3 | prassu | 9    |
|    3 | prassu |    9 |    3 | prassu | 9    |
|    2 | sai    |   10 |    3 | prassu | 9    |
|    1 | mega   |   10 |    3 | prassu | 9    |
|    8 | asri   |   10 |    7 | paandu | 0    |
|    5 | prabha |   10 |    7 | paandu | 0    |
|    4 | paandu | NULL |    7 | paandu | 0    |
|    7 | paandu |    0 |    7 | paandu | 0    |
|    3 | prassu |    9 |    7 | paandu | 0    |
|    2 | sai    |   10 |    7 | paandu | 0    |
|    1 | mega   |   10 |    7 | paandu | 0    |
|    8 | asri   |   10 |    4 | paandu | NULL |
|    5 | prabha |   10 |    4 | paandu | NULL |
|    4 | paandu | NULL |    4 | paandu | NULL |
|    7 | paandu |    0 |    4 | paandu | NULL |
|    3 | prassu |    9 |    4 | paandu | NULL |
|    2 | sai    |   10 |    4 | paandu | NULL |
|    1 | mega   |   10 |    4 | paandu | NULL |
|    8 | asri   |   10 |    5 | prabha | 10   |
|    5 | prabha |   10 |    5 | prabha | 10   |
|    4 | paandu | NULL |    5 | prabha | 10   |
|    7 | paandu |    0 |    5 | prabha | 10   |
|    3 | prassu |    9 |    5 | prabha | 10   |
|    2 | sai    |   10 |    5 | prabha | 10   |
|    1 | mega   |   10 |    5 | prabha | 10   |
|    8 | asri   |   10 |    8 | asri   | 10   |
|    5 | prabha |   10 |    8 | asri   | 10   |
|    4 | paandu | NULL |    8 | asri   | 10   |
|    7 | paandu |    0 |    8 | asri   | 10   |
|    3 | prassu |    9 |    8 | asri   | 10   |
|    2 | sai    |   10 |    8 | asri   | 10   |
|    1 | mega   |   10 |    8 | asri   | 10   |
|    8 | asri   |   10 |    9 | ap     | m    |
|    5 | prabha |   10 |    9 | ap     | m    |
|    4 | paandu | NULL |    9 | ap     | m    |
|    7 | paandu |    0 |    9 | ap     | m    |
|    3 | prassu |    9 |    9 | ap     | m    |
|    2 | sai    |   10 |    9 | ap     | m    |
|    1 | mega   |   10 |    9 | ap     | m    |
+------+--------+------+------+--------+------+
77 rows in set (0.00 sec)

mysql> select *from megha cross join sai;
+------+--------+------+------+--------+------+
| sid  | sname  | cgpa | sid  | city   | sex  |
+------+--------+------+------+--------+------+
|    8 | asri   |   10 |    1 | snd    | m    |
|    5 | prabha |   10 |    1 | snd    | m    |
|    4 | paandu | NULL |    1 | snd    | m    |
|    7 | paandu |    0 |    1 | snd    | m    |
|    3 | prassu |    9 |    1 | snd    | m    |
|    2 | sai    |   10 |    1 | snd    | m    |
|    1 | mega   |   10 |    1 | snd    | m    |
|    8 | asri   |   10 |    2 | ajd    | f    |
|    5 | prabha |   10 |    2 | ajd    | f    |
|    4 | paandu | NULL |    2 | ajd    | f    |
|    7 | paandu |    0 |    2 | ajd    | f    |
|    3 | prassu |    9 |    2 | ajd    | f    |
|    2 | sai    |   10 |    2 | ajd    | f    |
|    1 | mega   |   10 |    2 | ajd    | f    |
|    8 | asri   |   10 |    3 | dhd    | m    |
|    5 | prabha |   10 |    3 | dhd    | m    |
|    4 | paandu | NULL |    3 | dhd    | m    |
|    7 | paandu |    0 |    3 | dhd    | m    |
|    3 | prassu |    9 |    3 | dhd    | m    |
|    2 | sai    |   10 |    3 | dhd    | m    |
|    1 | mega   |   10 |    3 | dhd    | m    |
|    8 | asri   |   10 |    1 | mega   | 10   |
|    5 | prabha |   10 |    1 | mega   | 10   |
|    4 | paandu | NULL |    1 | mega   | 10   |
|    7 | paandu |    0 |    1 | mega   | 10   |
|    3 | prassu |    9 |    1 | mega   | 10   |
|    2 | sai    |   10 |    1 | mega   | 10   |
|    1 | mega   |   10 |    1 | mega   | 10   |
|    8 | asri   |   10 |    2 | sai    | 10   |
|    5 | prabha |   10 |    2 | sai    | 10   |
|    4 | paandu | NULL |    2 | sai    | 10   |
|    7 | paandu |    0 |    2 | sai    | 10   |
|    3 | prassu |    9 |    2 | sai    | 10   |
|    2 | sai    |   10 |    2 | sai    | 10   |
|    1 | mega   |   10 |    2 | sai    | 10   |
|    8 | asri   |   10 |    3 | prassu | 9    |
|    5 | prabha |   10 |    3 | prassu | 9    |
|    4 | paandu | NULL |    3 | prassu | 9    |
|    7 | paandu |    0 |    3 | prassu | 9    |
|    3 | prassu |    9 |    3 | prassu | 9    |
|    2 | sai    |   10 |    3 | prassu | 9    |
|    1 | mega   |   10 |    3 | prassu | 9    |
|    8 | asri   |   10 |    7 | paandu | 0    |
|    5 | prabha |   10 |    7 | paandu | 0    |
|    4 | paandu | NULL |    7 | paandu | 0    |
|    7 | paandu |    0 |    7 | paandu | 0    |
|    3 | prassu |    9 |    7 | paandu | 0    |
|    2 | sai    |   10 |    7 | paandu | 0    |
|    1 | mega   |   10 |    7 | paandu | 0    |
|    8 | asri   |   10 |    4 | paandu | NULL |
|    5 | prabha |   10 |    4 | paandu | NULL |
|    4 | paandu | NULL |    4 | paandu | NULL |
|    7 | paandu |    0 |    4 | paandu | NULL |
|    3 | prassu |    9 |    4 | paandu | NULL |
|    2 | sai    |   10 |    4 | paandu | NULL |
|    1 | mega   |   10 |    4 | paandu | NULL |
|    8 | asri   |   10 |    5 | prabha | 10   |
|    5 | prabha |   10 |    5 | prabha | 10   |
|    4 | paandu | NULL |    5 | prabha | 10   |
|    7 | paandu |    0 |    5 | prabha | 10   |
|    3 | prassu |    9 |    5 | prabha | 10   |
|    2 | sai    |   10 |    5 | prabha | 10   |
|    1 | mega   |   10 |    5 | prabha | 10   |
|    8 | asri   |   10 |    8 | asri   | 10   |
|    5 | prabha |   10 |    8 | asri   | 10   |
|    4 | paandu | NULL |    8 | asri   | 10   |
|    7 | paandu |    0 |    8 | asri   | 10   |
|    3 | prassu |    9 |    8 | asri   | 10   |
|    2 | sai    |   10 |    8 | asri   | 10   |
|    1 | mega   |   10 |    8 | asri   | 10   |
|    8 | asri   |   10 |    9 | ap     | m    |
|    5 | prabha |   10 |    9 | ap     | m    |
|    4 | paandu | NULL |    9 | ap     | m    |
|    7 | paandu |    0 |    9 | ap     | m    |
|    3 | prassu |    9 |    9 | ap     | m    |
|    2 | sai    |   10 |    9 | ap     | m    |
|    1 | mega   |   10 |    9 | ap     | m    |
+------+--------+------+------+--------+------+
77 rows in set (0.00 sec)

mysql> 


