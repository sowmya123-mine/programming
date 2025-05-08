mysql> insert into great values(1,'megha',null );
Query OK, 1 row affected (0.09 sec)

mysql> select *from great;
+------+-------+-------+
| sid  | sname | marks |
+------+-------+-------+
|    1 | megha |  NULL |
+------+-------+-------+
1 row in set (0.00 sec)

mysql> insert into great values(2,'sai',90 );
Query OK, 1 row affected (0.08 sec)


mysql> select sid,sname,marks from great where marks is not null;
+------+-------+-------+
| sid  | sname | marks |
+------+-------+-------+
|    2 | sai   |    90 |
+------+-------+-------+
1 row in set (0.00 sec)

mysql> select sid,sname,marks from great where marks is null;
+------+-------+-------+
| sid  | sname | marks |
+------+-------+-------+
|    1 | megha |  NULL |
+------+-------+-------+
1 row in set (0.00 sec)

mysql> select sid,sname,marks,ifnull(marks,0) as marks from great;
+------+-------+-------+-------+
| sid  | sname | marks | marks |
+------+-------+-------+-------+
|    1 | megha |  NULL |     0 |
|    2 | sai   |    90 |    90 |
+------+-------+-------+-------+
2 rows in set (0.00 sec)

mysql> select sid,sname,marks,ifnull(marks,1) as marks from great;
+------+-------+-------+-------+
| sid  | sname | marks | marks |
+------+-------+-------+-------+
|    1 | megha |  NULL |     1 |
|    2 | sai   |    90 |    90 |
+------+-------+-------+-------+
2 rows in set (0.00 sec)

mysql> select ifnull(null,'meghana');
+------------------------+
| ifnull(null,'meghana') |
+------------------------+
| meghana                |
+------------------------+
1 row in set (0.00 sec)

mysql> select ifnull('meghana','sai');
+-------------------------+
| ifnull('meghana','sai') |
+-------------------------+
| meghana                 |
+-------------------------+
1 row in set (0.00 sec)

mysql> select sid,sname,case when marks is null then 0 else marks end as marks from great;
+------+-------+-------+
| sid  | sname | marks |
+------+-------+-------+
|    1 | megha |     0 |
|    2 | sai   |    90 |
+------+-------+-------+
2 rows in set (0.00 sec)

mysql> select sid,sname,case when marks is null then 1 else marks end as marks from great;
+------+-------+-------+
| sid  | sname | marks |
+------+-------+-------+
|    1 | megha |     1 |
|    2 | sai   |    90 |
+------+-------+-------+
2 rows in set (0.00 sec)

mysql> select sid,sname,case when marks is null then 0 else marks end as marks from great;
+------+-------+-------+
| sid  | sname | marks |
+------+-------+-------+
|    1 | megha |     0 |
|    2 | sai   |    90 |
+------+-------+-------+
2 rows in set (0.00 sec)

mysql> select sid,sname ,case when marks is null then 0 else " marks is greater than 0" end as marks from great;
+------+-------+--------------------------+
| sid  | sname | marks                    |
+------+-------+--------------------------+
|    1 | megha | 0                        |
|    2 | sai   |  marks is greater than 0 |
+------+-------+--------------------------+
2 rows in set (0.00 sec)

mysql> select sid,sname ,case when marks is null then 0 else " marks is greater than 0" end as exmarks from great;
+------+-------+--------------------------+
| sid  | sname | exmarks                  |
+------+-------+--------------------------+
|    1 | megha | 0                        |
|    2 | sai   |  marks is greater than 0 |
+------+-------+--------------------------+
2 rows in set (0.00 sec)

Database changed
mysql> show tables;
+-------------------+
| Tables_in_example |
+-------------------+
| megha             |
| sai               |
+-------------------+
2 rows in set (0.00 sec)

mysql> select *from megha;
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
+------+--------+------+
3 rows in set (0.00 sec)

mysql> insert into megha values(4,'paandu',0);
Query OK, 1 row affected (0.07 sec)

mysql> select *from megha;
+------+--------+------+
| sid  | sname  | cgpa |
+------+--------+------+
|    1 | mega   |   10 |
|    2 | sai    |   10 |
|    3 | prassu |    9 |
|    4 | paandu |    0 |
+------+--------+------+
4 rows in set (0.00 sec)

mysql> insert into megha values(4,'paandu',null);
Query OK, 1 row affected (0.08 sec)

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

mysql> select sid,sname,cgpa from megha ifnull(marks,12) ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(marks,12)' at line 1
mysql> select sid,sname,cgpa, ifnull(marks,12) from megha ;
ERROR 1054 (42S22): Unknown column 'marks' in 'field list'
mysql> select sid,sname,cgpa, ifnull(cgpa,12) from megha ;
+------+--------+------+-----------------+
| sid  | sname  | cgpa | ifnull(cgpa,12) |
+------+--------+------+-----------------+
|    1 | mega   |   10 |              10 |
|    2 | sai    |   10 |              10 |
|    3 | prassu |    9 |               9 |
|    4 | paandu |    0 |               0 |
|    4 | paandu | NULL |              12 |
+------+--------+------+-----------------+
5 rows in set (0.00 sec)

mysql> select sid,sname,cgpa, ifnull(cgpa,12) from megha where sid=4 ;
+------+--------+------+-----------------+
| sid  | sname  | cgpa | ifnull(cgpa,12) |
+------+--------+------+-----------------+
|    4 | paandu |    0 |               0 |
|    4 | paandu | NULL |              12 |
+------+--------+------+-----------------+
2 rows in set (0.00 sec)


