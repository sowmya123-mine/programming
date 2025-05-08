
mysql> use example;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> create table megha(sid int,sname varchar(20),cgpa int);
Query OK, 0 rows affected (0.89 sec)

mysql> insert into megha values(1,'mega',10);
Query OK, 1 row affected (0.51 sec)

mysql> insert into megha values(2,'sai',9.5);
Query OK, 1 row affected (0.09 sec)

mysql> insert into megha values(3,'prassu',9);
Query OK, 1 row affected (0.08 sec)

mysql> create table sai(sid int ,city varchar(20),sex char(10));
Query OK, 0 rows affected (0.78 sec)

mysql> insert into sai values(1,'snd','m');
Query OK, 1 row affected (0.07 sec)

mysql> insert into sai values(2,'ajd','f');
Query OK, 1 row affected (0.10 sec)

mysql> insert into sai values(3,'dhd','m');
Query OK, 1 row affected (0.10 sec)

mysql> select *from megha;
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
+------+--------+------+
3 rows in set (0.00 sec)

mysql> select *from sai;
+------+------+------+
| sid  | city | sex  |
+------+------+------+
|    1 | snd  | m    |
|    2 | ajd  | f    |
|    3 | dhd  | m    |
+------+------+------+
3 rows in set (0.00 sec)

mysql> select *from megha cross join sai;
+------+--------+------+------+------+------+
| sid  | sname  | cgpa | sid  | city | sex  |
+------+--------+------+------+------+------+
|    3 | prassu |    9 |    1 | snd  | m    |
|    2 | sai    |   10 |    1 | snd  | m    |
|    1 | mega   |   10 |    1 | snd  | m    |
|    3 | prassu |    9 |    2 | ajd  | f    |
|    2 | sai    |   10 |    2 | ajd  | f    |
|    1 | mega   |   10 |    2 | ajd  | f    |
|    3 | prassu |    9 |    3 | dhd  | m    |
|    2 | sai    |   10 |    3 | dhd  | m    |
|    1 | mega   |   10 |    3 | dhd  | m    |
+------+--------+------+------+------+------+
9 rows in set (0.00 sec)

mysql> select *from megha,sai where megha.sid=sai.sid;
+------+--------+------+------+------+------+
| sid  | sname  | cgpa | sid  | city | sex  |
+------+--------+------+------+------+------+
|    1 | mega   |   10 |    1 | snd  | m    |
|    2 | sai    |   10 |    2 | ajd  | f    |
|    3 | prassu |    9 |    3 | dhd  | m    |
+------+--------+------+------+------+------+
3 rows in set (0.00 sec)

mysql> select *from megha natural join sai;
+------+--------+------+------+------+
| sid  | sname  | cgpa | city | sex  |
+------+--------+------+------+------+
|    1 | mega   |   10 | snd  | m    |
|    2 | sai    |   10 | ajd  | f    |
|    3 | prassu |    9 | dhd  | m    |
+------+--------+------+------+------+
3 rows in set (0.30 sec)

mysql> select *from megha left outer join sai on megha.sid=sai.sid;
+------+--------+------+------+------+------+
| sid  | sname  | cgpa | sid  | city | sex  |
+------+--------+------+------+------+------+
|    1 | mega   |   10 |    1 | snd  | m    |
|    2 | sai    |   10 |    2 | ajd  | f    |
|    3 | prassu |    9 |    3 | dhd  | m    |
+------+--------+------+------+------+------+
3 rows in set (0.00 sec)

mysql> select *from megha right outer join sai on megha.sid=sai.sid;
+------+--------+------+------+------+------+
| sid  | sname  | cgpa | sid  | city | sex  |
+------+--------+------+------+------+------+
|    1 | mega   |   10 |    1 | snd  | m    |
|    2 | sai    |   10 |    2 | ajd  | f    |
|    3 | prassu |    9 |    3 | dhd  | m    |
+------+--------+------+------+------+------+
3 rows in set (0.01 sec)

mysql> select megha.sid,sai.sid from megha left outer join sai on megha.sid=sai.sid;
+------+------+
| sid  | sid  |
+------+------+
|    1 |    1 |
|    2 |    2 |
|    3 |    3 |
+------+------+
3 rows in set (0.00 sec)


