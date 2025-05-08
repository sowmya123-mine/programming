mysql> use example;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> desc example;

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
| meghana            |
| mysql              |
| performance_schema |
| relation           |
| std                |
| sys                |
| tcl                |
+--------------------+
17 rows in set (0.00 sec)

mysql> use std;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+---------------+
| Tables_in_std |
+---------------+
| dad           |
| megha         |
| sai           |
| student       |
+---------------+
4 rows in set (0.00 sec)

mysql> use student;
ERROR 1049 (42000): Unknown database 'student'
mysql> select *from student;
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

mysql> select stdid,stdname  from student where stdmarks is not null;
+-------+---------+
| stdid | stdname |
+-------+---------+
|     1 | meghana |
|     2 | anusha  |
|     3 | asritha |
|     4 | sai     |
|     5 | teja    |
|     6 | rama    |
|     7 | prassu  |
|     8 | pandu   |
|     9 | nandu   |
|    10 | shasmi  |
+-------+---------+
10 rows in set (0.00 sec)

mysql> create database mom
    -> ;
Query OK, 1 row affected (0.11 sec)

mysql> use mom;
Database changed
mysql> create table great(sid int,sname char(30),marks int);
Query OK, 0 rows affected (0.55 sec)

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

mysql> ^Casjak;
asjak;
^C
mysql> select datediff(2022-09-12,2022-10-13);
+---------------------------------+
| datediff(2022-09-12,2022-10-13) |
+---------------------------------+
|                            NULL |
+---------------------------------+
1 row in set, 2 warnings (0.00 sec)

mysql> SELECT DATEDIFF("2017-06-25", "2017-06-15"); 
SELECT DATEDIFF("2017-06-25", "2017-06-15"); 
^C
mysql> select datediff(2022-09-12,2022-10-13);
+---------------------------------+
| datediff(2022-09-12,2022-10-13) |
+---------------------------------+
|                            NULL |
+---------------------------------+
1 row in set, 2 warnings (0.00 sec)

mysql> select datediff(2022-06-12,2022-06-13);
+---------------------------------+
| datediff(2022-06-12,2022-06-13) |
+---------------------------------+
|                            NULL |
+---------------------------------+
1 row in set, 2 warnings (0.00 sec)

mysql> select datediff('2022-06-12','2022-08-13');
+-------------------------------------+
| datediff('2022-06-12','2022-08-13') |
+-------------------------------------+
|                                 -62 |
+-------------------------------------+
1 row in set (0.00 sec)

mysql> select datediff('2022-10-12','2022-08-13');
+-------------------------------------+
| datediff('2022-10-12','2022-08-13') |
+-------------------------------------+
|                                  60 |
+-------------------------------------+
1 row in set (0.00 sec)

mysql> select adddate('2022-10-25',interval 10 day);
+---------------------------------------+
| adddate('2022-10-25',interval 10 day) |
+---------------------------------------+
| 2022-11-04                            |
+---------------------------------------+
1 row in set (0.03 sec)


mysql> select date_format('2022-10-25',"%y");
+--------------------------------+
| date_format('2022-10-25',"%y") |
+--------------------------------+
| 22                             |
+--------------------------------+
1 row in set (0.04 sec)

mysql> select date_format('2023-10-25',"%y");
+--------------------------------+
| date_format('2023-10-25',"%y") |
+--------------------------------+
| 23                             |
+--------------------------------+
1 row in set (0.00 sec)

mysql> select date_format('2023-10-25',"%Y");
+--------------------------------+
| date_format('2023-10-25',"%Y") |
+--------------------------------+
| 2023                           |
+--------------------------------+
1 row in set (0.00 sec)

mysql> select subdate('2022-10-25',interval 10 day);
+---------------------------------------+
| subdate('2022-10-25',interval 10 day) |
+---------------------------------------+
| 2022-10-15                            |
+---------------------------------------+
1 row in set (0.01 sec)

mysql> select day('2022-07-15');
+-------------------+
| day('2022-07-15') |
+-------------------+
|                15 |
+-------------------+
1 row in set (0.00 sec)

mysql> select dayofweek('2022-07-15');
+-------------------------+
| dayofweek('2022-07-15') |
+-------------------------+
|                       6 |
+-------------------------+
1 row in set (0.00 sec)

mysql> select dayofyear('2022-07-15');
+-------------------------+
| dayofyear('2022-07-15') |
+-------------------------+
|                     196 |
+-------------------------+
1 row in set (0.00 sec)

mysql> select extract(month from '2022-10-6');
+---------------------------------+
| extract(month from '2022-10-6') |
+---------------------------------+
|                              10 |
+---------------------------------+
1 row in set (0.00 sec)

mysql> select from_days(685467);
+-------------------+
| from_days(685467) |
+-------------------+
| 1876-09-29        |
+-------------------+
1 row in set (0.00 sec)

mysql> select hour('9:10:22');
+-----------------+
| hour('9:10:22') |
+-----------------+
|               9 |
+-----------------+
1 row in set (0.00 sec)

mysql> select last_day('2022-10-7');
+-----------------------+
| last_day('2022-10-7') |
+-----------------------+
| 2022-10-31            |
+-----------------------+
1 row in set (0.00 sec)

mysql> select makedate(2017,3);
+------------------+
| makedate(2017,3) |
+------------------+
| 2017-01-03       |
+------------------+
1 row in set (0.00 sec)

mysql> select makedate(2022,5);
+------------------+
| makedate(2022,5) |
+------------------+
| 2022-01-05       |
+------------------+
1 row in set (0.00 sec)

mysql> select maketime(11,34,5);
+-------------------+
| maketime(11,34,5) |
+-------------------+
| 11:34:05          |
+-------------------+
1 row in set (0.00 sec)


mysql> select microsecond('09:34:00.000023');
+--------------------------------+
| microsecond('09:34:00.000023') |
+--------------------------------+
|                             23 |
+--------------------------------+
1 row in set (0.00 sec)

mysql> select minute('09:34:00.000023');
+---------------------------+
| minute('09:34:00.000023') |
+---------------------------+
|                        34 |
+---------------------------+
1 row in set (0.00 sec)

mysql> select monthname('2022-10-25');
+-------------------------+
| monthname('2022-10-25') |
+-------------------------+
| October                 |
+-------------------------+
1 row in set (0.01 sec)

mysql> select mow();
ERROR 1305 (42000): FUNCTION example.mow does not exist
mysql> select now();
+---------------------+
| now()               |
+---------------------+
| 2022-12-04 16:24:03 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT PERIOD_ADD(201703, 5); 
+-----------------------+
| PERIOD_ADD(201703, 5) |
+-----------------------+
|                201708 |
+-----------------------+
1 row in set (0.00 sec)

mysql> select quater('2022-10-15');
ERROR 1305 (42000): FUNCTION example.quater does not exist
mysql> select quarter('2022-10-15');
+-----------------------+
| quarter('2022-10-15') |
+-----------------------+
|                     4 |
+-----------------------+
1 row in set (0.00 sec)

mysql> select quarter('2023-10-15');
+-----------------------+
| quarter('2023-10-15') |
+-----------------------+
|                     4 |
+-----------------------+
1 row in set (0.00 sec)

mysql> select quarter('2023-10-25');
+-----------------------+
| quarter('2023-10-25') |
+-----------------------+
|                     4 |
+-----------------------+
1 row in set (0.00 sec)

mysql> select second('09:34:00.000023');
+---------------------------+
| second('09:34:00.000023') |
+---------------------------+
|                         0 |
+---------------------------+
1 row in set (0.00 sec)


mysql> select sec_to_time(1);
+----------------+
| sec_to_time(1) |
+----------------+
| 00:00:01       |
+----------------+
1 row in set (0.00 sec)

mysql> select sec_to_time(100);
+------------------+
| sec_to_time(100) |
+------------------+
| 00:01:40         |
+------------------+
1 row in set (0.00 sec)

mysql> select str_to_date('august 10 2017','%m %d %y');
+------------------------------------------+
| str_to_date('august 10 2017','%m %d %y') |
+------------------------------------------+
| NULL                                     |
+------------------------------------------+
1 row in set, 1 warning (0.03 sec)

mysql> SELECT STR_TO_DATE("August 10 2017", "%M %d %Y"); 
+-------------------------------------------+
| STR_TO_DATE("August 10 2017", "%M %d %Y") |
+-------------------------------------------+
| 2017-08-10                                |
+-------------------------------------------+
1 row in set (0.03 sec)

mysql> select sysdate();
+---------------------+
| sysdate()           |
+---------------------+
| 2022-12-04 16:31:17 |
+---------------------+
1 row in set (0.00 sec)

mysql> select time_to_sec('19:10:05');
+-------------------------+
| time_to_sec('19:10:05') |
+-------------------------+
|                   69005 |
+-------------------------+
1 row in set (0.00 sec)

mysql> SELECT TIMEDIFF("13:10:11", "13:10:10"); 
+----------------------------------+
| TIMEDIFF("13:10:11", "13:10:10") |
+----------------------------------+
| 00:00:01                         |
+----------------------------------+
1 row in set (0.00 sec)

mysql> SELECT TIMESTAMP("2017-07-23",  "13:10:11"); 
+--------------------------------------+
| TIMESTAMP("2017-07-23",  "13:10:11") |
+--------------------------------------+
| 2017-07-23 13:10:11                  |
+--------------------------------------+
1 row in set (0.00 sec)


mysql> select to_days('2022-10-5');
+----------------------+
| to_days('2022-10-5') |
+----------------------+
|               738798 |
+----------------------+
1 row in set (0.00 sec)

mysql> select weekday('2022-10-5');
+----------------------+
| weekday('2022-10-5') |
+----------------------+
|                    2 |
+----------------------+
1 row in set (0.00 sec)

mysql> select year('2022-10-5');
+-------------------+
| year('2022-10-5') |
+-------------------+
|              2022 |
+-------------------+
1 row in set (0.00 sec)

mysql> select yearweek('2022-10-5');
+-----------------------+
| yearweek('2022-10-5') |
+-----------------------+
|                202240 |
+-----------------------+
1 row in set (0.00 sec)

mysql> select bin(15);
+---------+
| bin(15) |
+---------+
| 1111    |
+---------+
1 row in set (0.00 sec)

mysql> select binary("meghana");
+--------------------------------------+
| binary("meghana")                    |
+--------------------------------------+
| 0x6D656768616E61                     |
+--------------------------------------+
1 row in set, 1 warning (0.00 sec)

mysql> select binary "meghana";
+------------------------------------+
| binary "meghana"                   |
+------------------------------------+
| 0x6D656768616E61                   |
+------------------------------------+
1 row in set, 1 warning (0.00 sec)

mysql> SELECT CAST("2017-08-29" AS DATE); 
+----------------------------+
| CAST("2017-08-29" AS DATE) |
+----------------------------+
| 2017-08-29                 |
+----------------------------+
1 row in set (0.00 sec)


mysql> select coalesce(null,null,'meghana',null,null,'sai');
+-----------------------------------------------+
| coalesce(null,null,'meghana',null,null,'sai') |
+-----------------------------------------------+
| meghana                                       |
+-----------------------------------------------+
1 row in set (0.00 sec)



