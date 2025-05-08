mysql> create table student(sid int,sname char(30),age int,primary key(sid));
Query OK, 0 rows affected (0.79 sec)

mysql> insert into student values(1,'meghana',18);
Query OK, 1 row affected (0.09 sec)

mysql> insert into student values(2,'saikishore',19);
Query OK, 1 row affected (0.75 sec)

mysql> insert into student values(3,'paandu',20);
Query OK, 1 row affected (0.06 sec)

mysql> insert into student values(4,'prabha',21);
Query OK, 1 row affected (0.48 sec)

mysql> insert into student values(5,'nandu',18);
Query OK, 1 row affected (0.08 sec)

mysql> insert into student values(6,'jyothi',19);
Query OK, 1 row affected (0.08 sec)

mysql> select *from student;
+-----+------------+------+
| sid | sname      | age  |
+-----+------------+------+
|   1 | meghana    |   18 |
|   2 | saikishore |   19 |
|   3 | paandu     |   20 |
|   4 | prabha     |   21 |
|   5 | nandu      |   18 |
|   6 | jyothi     |   19 |
+-----+------------+------+
6 rows in set (0.00 sec)

mysql> create table subject(sid int,primary key(sid),foreign key(sid)references student(sid),marks int,subjectcode varchar(10));
Query OK, 0 rows affected (0.57 sec)

mysql> insert into subject values(1,95,'asjdh');
Query OK, 1 row affected (0.47 sec)

mysql> insert into subject values(2,100,'dudja');
Query OK, 1 row affected (0.46 sec)

mysql> insert into subject values(3,89,'adjjkd');
Query OK, 1 row affected (0.08 sec)

mysql> insert into subject values(4,90,'dhwdbd');
Query OK, 1 row affected (0.07 sec)

mysql> insert into subject values(5,91,'iudhnd');
Query OK, 1 row affected (0.48 sec)

mysql> insert into subject values(6,89,'weuidb');
Query OK, 1 row affected (0.44 sec)

mysql> select *from subject;
+-----+-------+-------------+
| sid | marks | subjectcode |
+-----+-------+-------------+
|   1 |    95 | asjdh       |
|   2 |   100 | dudja       |
|   3 |    89 | adjjkd      |
|   4 |    90 | dhwdbd      |
|   5 |    91 | iudhnd      |
|   6 |    89 | weuidb      |
+-----+-------+-------------+
6 rows in set (0.00 sec)

mysql> desc subject;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| sid         | int         | NO   | PRI | NULL    |       |
| marks       | int         | YES  |     | NULL    |       |
| subjectcode | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select sname from student;
+------------+
| sname      |
+------------+
| meghana    |
| saikishore |
| paandu     |
| prabha     |
| nandu      |
| jyothi     |
+------------+
6 rows in set (0.00 sec)

mysql> select *from student;
+-----+------------+------+
| sid | sname      | age  |
+-----+------------+------+
|   1 | meghana    |   18 |
|   2 | saikishore |   19 |
|   3 | paandu     |   20 |
|   4 | prabha     |   21 |
|   5 | nandu      |   18 |
|   6 | jyothi     |   19 |
+-----+------------+------+
6 rows in set (0.00 sec)


