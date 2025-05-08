sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 195
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
| information_schema |
| linuxhint          |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

mysql> create database E2 cse-4;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'cse-4' at line 1
mysql> create database E2cse-4;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-4' at line 1
mysql> create E2cse
    -> create E2cse;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'E2cse
create E2cse' at line 1
mysql> create database E2CSE4;
Query OK, 1 row affected (0.76 sec)

mysql> use database E2CSE4;
ERROR 1049 (42000): Unknown database 'database'
mysql> use E2CSE4;
Database changed
mysql> create table CSE4(idno int,name varchar(20),age int,email char(30));
Query OK, 0 rows affected (0.68 sec)

mysql> insert into CSE4 values(1,'a',18,'@adc');
Query OK, 1 row affected (0.18 sec)

mysql> insert into CSE4 values(2,'b',18,'@def');
Query OK, 1 row affected (0.45 sec)

mysql> insert into CSE4 values(3,'c',20,'@ghi');
Query OK, 1 row affected (0.06 sec)

mysql> insert into CSE4 values(4,'d',19,'@jkl');
Query OK, 1 row affected (0.08 sec)

mysql> insert into CSE4 values(5,'e',19,'@mno');
Query OK, 1 row affected (0.07 sec)

mysql> insert into CSE4 values(6,'f',20,'@pqr');
Query OK, 1 row affected (0.44 sec)

mysql> insert into CSE4 values(7,'g',18,'@sqw');
Query OK, 1 row affected (0.44 sec)

mysql> insert into CSE4 values(8,'h',18,'@bgy');
Query OK, 1 row affected (0.46 sec)

mysql> insert into CSE4 values(9,'i',18,'@hgk');
Query OK, 1 row affected (0.07 sec)

mysql> insert into CSE4 values(10,'j',18,'@nmk');
Query OK, 1 row affected (0.10 sec)

mysql> insert into CSE4 values(11,'k',18,'@dfg');
Query OK, 1 row affected (0.08 sec)

mysql> insert into CSE4 values(12,'l',18,'@wqe');
Query OK, 1 row affected (0.47 sec)

mysql> insert into CSE4 values(13,'m',18,'@rty');
Query OK, 1 row affected (0.10 sec)

mysql> insert into CSE4 values(14,'n',18,'@gyt');
Query OK, 1 row affected (0.09 sec)

mysql> insert into CSE4 values(15,'o',18,'@lmk');
Query OK, 1 row affected (0.46 sec)

mysql> insert into CSE4 values(16,'p',18,'@pol');
Query OK, 1 row affected (0.07 sec)

mysql> insert into CSE4 values(17,'q',18,'@nhi');
Query OK, 1 row affected (0.25 sec)

mysql> insert into CSE4 values(18,'r',18,'@vfr');
Query OK, 1 row affected (0.07 sec)

mysql> insert into CSE4 values(19,'s',17,'@ber');
Query OK, 1 row affected (0.46 sec)

mysql> insert into CSE4 values(20,'t',18,'@wer');
Query OK, 1 row affected (0.44 sec)

mysql> insert into CSE4 values(21,'u',18,'@bwe');
Query OK, 1 row affected (0.08 sec)

mysql> insert into CSE4 values(22,'v',18,'@klp');
Query OK, 1 row affected (0.43 sec)

mysql> insert into CSE4 values(23,'w',18,'@qrt');
Query OK, 1 row affected (0.47 sec)

mysql> insert into CSE4 values(24,'x',18,'@nui');
Query OK, 1 row affected (0.09 sec)

mysql> insert into CSE4 values(25,'y',18,'@rtg');
Query OK, 1 row affected (0.12 sec)

mysql> insert into CSE4 values(25,'y',18,'@ndr'),
    -> (26,'z',19,'@mnr'),
    -> (27,'rt',17,'@per');
Query OK, 3 rows affected (0.16 sec)
Records: 3  Duplicates: 0  Warnings: 0
mysql> insert into CSE4 values(40,'qo',18,'@try');
Query OK, 1 row affected (0.19 sec)

mysql> insert into CSE4 values(41,'ty',18,'@mkl');
Query OK, 1 row affected (0.44 sec)

mysql> insert into CSE4 values(42,'nr',18,'@tre');
Query OK, 1 row affected (0.43 sec)

mysql> insert into CSE4 values(43,'nt',18,'@wrt');
Query OK, 1 row affected (0.07 sec)

mysql> insert into CSE4 values(44,'bg',18,'@wop');
Query OK, 1 row affected (0.09 sec)

mysql> insert into CSE4 values(45,'kj',18,'@fry');
Query OK, 1 row affected (0.08 sec)

mysql> insert into CSE4 values(46,'gj',18,'@rtv');
Query OK, 1 row affected (0.07 sec)

mysql> select *from E2CSE4;
ERROR 1146 (42S02): Table 'E2CSE4.E2CSE4' doesn't exist
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| E2CSE4             |
| bakery             |
| information_schema |
| linuxhint          |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
7 rows in set (0.01 sec)

mysql> select *from E2CSE4;
ERROR 1146 (42S02): Table 'E2CSE4.E2CSE4' doesn't exist
mysql> select *from CSE4;
+------+------+------+-------+
| idno | name | age  | email |
+------+------+------+-------+
|    1 | a    |   18 | @adc  |
|    2 | b    |   18 | @def  |
|    3 | c    |   20 | @ghi  |
|    4 | d    |   19 | @jkl  |
|    5 | e    |   19 | @mno  |
|    6 | f    |   20 | @pqr  |
|    7 | g    |   18 | @sqw  |
|    8 | h    |   18 | @bgy  |
|    9 | i    |   18 | @hgk  |
|   10 | j    |   18 | @nmk  |
|   11 | k    |   18 | @dfg  |
|   12 | l    |   18 | @wqe  |
|   13 | m    |   18 | @rty  |
|   14 | n    |   18 | @gyt  |
|   15 | o    |   18 | @lmk  |
|   16 | p    |   18 | @pol  |
|   17 | q    |   18 | @nhi  |
|   18 | r    |   18 | @vfr  |
|   19 | s    |   17 | @ber  |
|   20 | t    |   18 | @wer  |
|   21 | u    |   18 | @bwe  |
|   22 | v    |   18 | @klp  |
|   23 | w    |   18 | @qrt  |
|   24 | x    |   18 | @nui  |
|   25 | y    |   18 | @rtg  |
|   25 | y    |   18 | @ndr  |
|   26 | z    |   19 | @mnr  |
|   27 | rt   |   17 | @per  |
|   40 | qo   |   18 | @try  |
|   41 | ty   |   18 | @mkl  |
|   42 | nr   |   18 | @tre  |
|   43 | nt   |   18 | @wrt  |
|   44 | bg   |   18 | @wop  |
|   45 | kj   |   18 | @fry  |
|   46 | gj   |   18 | @rtv  |
+------+------+------+-------+
35 rows in set (0.00 sec)

mysql> insert into CSE4 values(47,'gh',18,'@rgf');
Query OK, 1 row affected (0.08 sec)

mysql> insert into CSE4 values(48,'nk',18,'@gdf');
Query OK, 1 row affected (0.06 sec)

mysql> insert into CSE4 values(49,'ni',18,'@ats');
Query OK, 1 row affected (0.09 sec)

mysql> insert into CSE4 values(50,'bh',18,'@awq');
Query OK, 1 row affected (0.07 sec)

mysql> insert into CSE4 values(51,'ut',18,'@jhg');
Query OK, 1 row affected (0.43 sec)

mysql> insert into CSE4 values(52,'op',18,'@dfr');
Query OK, 1 row affected (0.08 sec)

mysql> insert into CSE4 values(53,'ye',18,'@lop');
Query OK, 1 row affected (0.53 sec)

mysql> insert into CSE4 values(54,'mn',18,'@bse');
Query OK, 1 row affected (0.46 sec)

mysql> insert into CSE4 values(55,'lq',18,'@ksd');
Query OK, 1 row affected (0.06 sec)

mysql> insert into CSE4 values(56,'tr',18,'@msd');
Query OK, 1 row affected (0.47 sec)

mysql> insert into CSE4 values(57,'er',18,'@wyt');
Query OK, 1 row affected (0.08 sec)

mysql> insert into CSE4 values(58,'ko',18,'@bgt');
Query OK, 1 row affected (0.07 sec)

mysql> insert into CSE4 values(59,'nb',18,'@wds');
Query OK, 1 row affected (0.07 sec)

mysql> insert into CSE4 values(60,'ku',18,'@ndr');
Query OK, 1 row affected (0.10 sec)

mysql> insert into CSE4 values(61,'nw',18,'@rti');
Query OK, 1 row affected (0.08 sec)

mysql> insert into CSE4 values(62,'uq',18,'@hqy');
Query OK, 1 row affected (0.10 sec)

mysql> select *from CSE4;
+------+------+------+-------+
| idno | name | age  | email |
+------+------+------+-------+
|    1 | a    |   18 | @adc  |
|    2 | b    |   18 | @def  |
|    3 | c    |   20 | @ghi  |
|    4 | d    |   19 | @jkl  |
|    5 | e    |   19 | @mno  |
|    6 | f    |   20 | @pqr  |
|    7 | g    |   18 | @sqw  |
|    8 | h    |   18 | @bgy  |
|    9 | i    |   18 | @hgk  |
|   10 | j    |   18 | @nmk  |
|   11 | k    |   18 | @dfg  |
|   12 | l    |   18 | @wqe  |
|   13 | m    |   18 | @rty  |
|   14 | n    |   18 | @gyt  |
|   15 | o    |   18 | @lmk  |
|   16 | p    |   18 | @pol  |
|   17 | q    |   18 | @nhi  |
|   18 | r    |   18 | @vfr  |
|   19 | s    |   17 | @ber  |
|   20 | t    |   18 | @wer  |
|   21 | u    |   18 | @bwe  |
|   22 | v    |   18 | @klp  |
|   23 | w    |   18 | @qrt  |
|   24 | x    |   18 | @nui  |
|   25 | y    |   18 | @rtg  |
|   25 | y    |   18 | @ndr  |
|   26 | z    |   19 | @mnr  |
|   27 | rt   |   17 | @per  |
|   40 | qo   |   18 | @try  |
|   41 | ty   |   18 | @mkl  |
|   42 | nr   |   18 | @tre  |
|   43 | nt   |   18 | @wrt  |
|   44 | bg   |   18 | @wop  |
|   45 | kj   |   18 | @fry  |
|   46 | gj   |   18 | @rtv  |
|   47 | gh   |   18 | @rgf  |
|   48 | nk   |   18 | @gdf  |
|   49 | ni   |   18 | @ats  |
|   50 | bh   |   18 | @awq  |
|   51 | ut   |   18 | @jhg  |
|   52 | op   |   18 | @dfr  |
|   53 | ye   |   18 | @lop  |
|   54 | mn   |   18 | @bse  |
|   55 | lq   |   18 | @ksd  |
|   56 | tr   |   18 | @msd  |
|   57 | er   |   18 | @wyt  |
|   58 | ko   |   18 | @bgt  |
|   59 | nb   |   18 | @wds  |
|   60 | ku   |   18 | @ndr  |
|   61 | nw   |   18 | @rti  |
|   62 | uq   |   18 | @hqy  |
+------+------+------+-------+
51 rows in set (0.00 sec)

mysql> insert into CSE4 values(63,'xd',18,'@hfd');
Query OK, 1 row affected (0.09 sec)

mysql> insert into CSE4 values(64,'tq',18,'@klo');
Query OK, 1 row affected (0.07 sec)

mysql> insert into CSE4 values(65,'mv',18,'@swd');
Query OK, 1 row affected (0.07 sec)
mysql> insert into CSE4 values(67,'rv',18,'@ghf');
Query OK, 1 row affected (0.32 sec)

mysql> insert into CSE4 values(68,'ol',18,'@wer');
Query OK, 1 row affected (0.07 sec)

mysql> insert into CSE4 values(69,'ms',18,'@lop');
Query OK, 1 row affected (0.80 sec)

mysql> insert into CSE4 values(70,'mk',18,'@kgh');
Query OK, 1 row affected (0.08 sec)

mysql> insert into CSE4 values(71,'lp',18,'@tyg');
Query OK, 1 row affected (0.09 sec)

mysql> insert into CSE4 values(72,'pd',18,'@bcd');
Query OK, 1 row affected (0.07 sec)

mysql> insert into CSE4 values(73,'pk',18,'@mla');
Query OK, 1 row affected (0.11 sec)

mysql> insert into CSE4 values(74,'yq',18,'@sdg');
Query OK, 1 row affected (0.10 sec)

mysql> insert into CSE4 values(75,'ds',18,'@sdg');
Query OK, 1 row affected (0.15 sec)

mysql> insert into CSE4 values(76,'as',18,'@gfc');
Query OK, 1 row affected (0.05 sec)

mysql> insert into CSE4 values(77,'df',18,'@swd');
Query OK, 1 row affected (0.10 sec)

mysql> insert into CSE4 values(78,'ko',18,'@djkd');
Query OK, 1 row affected (0.07 sec)

mysql> insert into CSE4 values(79,'we',18,'@kla');
Query OK, 1 row affected (0.08 sec)

mysql> insert into CSE4 values(80,'lq',18,'@mhg');
Query OK, 1 row affected (0.08 sec)

mysql> select *from CSE4;
+------+------+------+-------+
| idno | name | age  | email |
+------+------+------+-------+
|    1 | a    |   18 | @adc  |
|    2 | b    |   18 | @def  |
|    3 | c    |   20 | @ghi  |
|    4 | d    |   19 | @jkl  |
|    5 | e    |   19 | @mno  |
|    6 | f    |   20 | @pqr  |
|    7 | g    |   18 | @sqw  |
|    8 | h    |   18 | @bgy  |
|    9 | i    |   18 | @hgk  |
|   10 | j    |   18 | @nmk  |
|   11 | k    |   18 | @dfg  |
|   12 | l    |   18 | @wqe  |
|   13 | m    |   18 | @rty  |
|   14 | n    |   18 | @gyt  |
|   15 | o    |   18 | @lmk  |
|   16 | p    |   18 | @pol  |
|   17 | q    |   18 | @nhi  |
|   18 | r    |   18 | @vfr  |
|   19 | s    |   17 | @ber  |
|   20 | t    |   18 | @wer  |
|   21 | u    |   18 | @bwe  |
|   22 | v    |   18 | @klp  |
|   23 | w    |   18 | @qrt  |
|   24 | x    |   18 | @nui  |
|   25 | y    |   18 | @rtg  |
|   25 | y    |   18 | @ndr  |
|   26 | z    |   19 | @mnr  |
|   27 | rt   |   17 | @per  |
|   40 | qo   |   18 | @try  |
|   41 | ty   |   18 | @mkl  |
|   42 | nr   |   18 | @tre  |
|   43 | nt   |   18 | @wrt  |
|   44 | bg   |   18 | @wop  |
|   45 | kj   |   18 | @fry  |
|   46 | gj   |   18 | @rtv  |
|   47 | gh   |   18 | @rgf  |
|   48 | nk   |   18 | @gdf  |
|   49 | ni   |   18 | @ats  |
|   50 | bh   |   18 | @awq  |
|   51 | ut   |   18 | @jhg  |
|   52 | op   |   18 | @dfr  |
|   53 | ye   |   18 | @lop  |
|   54 | mn   |   18 | @bse  |
|   55 | lq   |   18 | @ksd  |
|   56 | tr   |   18 | @msd  |
|   57 | er   |   18 | @wyt  |
|   58 | ko   |   18 | @bgt  |
|   59 | nb   |   18 | @wds  |
|   60 | ku   |   18 | @ndr  |
|   61 | nw   |   18 | @rti  |
|   62 | uq   |   18 | @hqy  |
|   63 | xd   |   18 | @hfd  |
|   64 | tq   |   18 | @klo  |
|   65 | mv   |   18 | @swd  |
|   67 | rv   |   18 | @ghf  |
|   68 | ol   |   18 | @wer  |
|   69 | ms   |   18 | @lop  |
|   70 | mk   |   18 | @kgh  |
|   71 | lp   |   18 | @tyg  |
|   72 | pd   |   18 | @bcd  |
|   73 | pk   |   18 | @mla  |
|   74 | yq   |   18 | @sdg  |
|   75 | ds   |   18 | @sdg  |
|   76 | as   |   18 | @gfc  |
|   77 | df   |   18 | @swd  |
|   78 | ko   |   18 | @djkd |
|   79 | we   |   18 | @kla  |
|   80 | lq   |   18 | @mhg  |
+------+------+------+-------+
68 rows in set (0.00 sec)

