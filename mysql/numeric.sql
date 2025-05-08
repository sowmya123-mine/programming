mysql> select abs(-5000);
+------------+
| abs(-5000) |
+------------+
|       5000 |
+------------+
1 row in set (0.00 sec)

mysql> select round(5.72);
+-------------+
| round(5.72) |
+-------------+
|           6 |
+-------------+
1 row in set (0.00 sec)

mysql> select ceil(5.72);
+------------+
| ceil(5.72) |
+------------+
|          6 |
+------------+
1 row in set (0.02 sec)

mysql> select floor(5.72);
+-------------+
| floor(5.72) |
+-------------+
|           5 |
+-------------+
1 row in set (0.00 sec)

mysql> select least(-27.56,-29.62,-32.56);
+-----------------------------+
| least(-27.56,-29.62,-32.56) |
+-----------------------------+
|                      -32.56 |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select greatest(-27.56,-29.62,-32.56);
+--------------------------------+
| greatest(-27.56,-29.62,-32.56) |
+--------------------------------+
|                         -27.56 |
+--------------------------------+
1 row in set (0.00 sec)

mysql> select sqrt(25);
+----------+
| sqrt(25) |
+----------+
|        5 |
+----------+
1 row in set (0.00 sec)

mysql> select power(5,3);
+------------+
| power(5,3) |
+------------+
|        125 |
+------------+
1 row in set (0.00 sec)

mysql> select upper("meghana");
+------------------+
| upper("meghana") |
+------------------+
| MEGHANA          |
+------------------+
1 row in set (0.03 sec)

mysql> select lower("meghana");
+------------------+
| lower("meghana") |
+------------------+
| meghana          |
+------------------+
1 row in set (0.00 sec)

mysql> select length("chandu");
+------------------+
| length("chandu") |
+------------------+
|                6 |
+------------------+
1 row in set (0.00 sec)

mysql> select concat("hello","sai");
+-----------------------+
| concat("hello","sai") |
+-----------------------+
| hellosai              |
+-----------------------+
1 row in set (0.00 sec)

mysql> select lpad("meghana",10,"*");
+------------------------+
| lpad("meghana",10,"*") |
+------------------------+
| ***meghana             |
+------------------------+
1 row in set (0.00 sec)

mysql> select rapd("meghana",10,"*");
ERROR 1046 (3D000): No database selected
mysql> select rapd("meghana",10,"*");
ERROR 1046 (3D000): No database selected
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| CSESEC4            |
| E2CSE4             |
| bakery             |
| example            |
| information_schema |
| lab                |
| lab1               |
| linuxhint          |
| meghana            |
| mysql              |
| performance_schema |
| std                |
| sys                |
| tcl                |
+--------------------+
14 rows in set (0.00 sec)

mysql> use lab1;
Database changed
mysql> select rapd("meghana",10,"*");
ERROR 1305 (42000): FUNCTION lab1.rapd does not exist
mysql> select ltrim("  meghana");
+--------------------+
| ltrim("  meghana") |
+--------------------+
| meghana            |
+--------------------+
1 row in set (0.00 sec)

mysql> select rtrim(" meghaan  ");
+---------------------+
| rtrim(" meghaan  ") |
+---------------------+
|  meghaan            |
+---------------------+
1 row in set (0.00 sec)

mysql> select rtrim("    meghana");
+----------------------+
| rtrim("    meghana") |
+----------------------+
|     meghana          |
+----------------------+
1 row in set (0.00 sec)

mysql> select substr("meghana",3,2);
+-----------------------+
| substr("meghana",3,2) |
+-----------------------+
| gh                    |
+-----------------------+
1 row in set (0.00 sec)

mysql> select rpad("meghana",10,"*");
+------------------------+
| rpad("meghana",10,"*") |
+------------------------+
| meghana***             |
+------------------------+
1 row in set (0.00 sec)

mysql> select rpad("meghana",10,"@");
+------------------------+
| rpad("meghana",10,"@") |
+------------------------+
| meghana@@@             |
+------------------------+
1 row in set (0.00 sec)
mysql> select ascii("A");
+------------+
| ascii("A") |
+------------+
|         65 |
+------------+
1 row in set (0.00 sec)

mysql> select length("meghana");
+-------------------+
| length("meghana") |
+-------------------+
|                 7 |
+-------------------+
1 row in set (0.00 sec)

mysql> select concatws("sql","my");
ERROR 1046 (3D000): No database selected
mysql> select concat_ws("sql","my");
+-----------------------+
| concat_ws("sql","my") |
+-----------------------+
| my                    |
+-----------------------+
1 row in set (0.00 sec)

mysql> select concat_ws("sql","my","sai");
+-----------------------------+
| concat_ws("sql","my","sai") |
+-----------------------------+
| mysqlsai                    |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select field("q");
ERROR 1582 (42000): Incorrect parameter count in the call to native function 'field'
mysql> select field("q","r","s");
+--------------------+
| field("q","r","s") |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)

mysql> select field("q");
ERROR 1582 (42000): Incorrect parameter count in the call to native function 'field'
mysql> select field("q","r","s");
+--------------------+
| field("q","r","s") |
+--------------------+
|                  0 |
+--------------------+
1 row in set (0.00 sec)

mysql> select find_in_set("q","s,q,l");
+--------------------------+
| find_in_set("q","s,q,l") |
+--------------------------+
|                        2 |
+--------------------------+
1 row in set (0.00 sec)

mysql> select format(250500.5634,2);
+-----------------------+
| format(250500.5634,2) |
+-----------------------+
| 250,500.56            |
+-----------------------+
1 row in set (0.00 sec)

mysql> select insert("meghana",1,4,"sai");
+-----------------------------+
| insert("meghana",1,4,"sai") |
+-----------------------------+
| saiana                      |
+-----------------------------+
1 row in set (0.00 sec)

mysql> select instr("meghana","3");
+----------------------+
| instr("meghana","3") |
+----------------------+
|                    0 |
+----------------------+
1 row in set (0.00 sec)

mysql> select instr("meghana meghana","3");
+------------------------------+
| instr("meghana meghana","3") |
+------------------------------+
|                            0 |
+------------------------------+
1 row in set (0.00 sec)

mysql> select instr("meghan, meghana","3");
+------------------------------+
| instr("meghan, meghana","3") |
+------------------------------+
|                            0 |
+------------------------------+
1 row in set (0.00 sec)


+------------------------+
| left("sql tutorial",3) |
+------------------------+
| sql                    |
+------------------------+
1 row in set (0.00 sec)

mysql> show tables;
+---------------+
| Tables_in_std |
+---------------+
| student       |
+---------------+
1 row in set (0.00 sec)

mysql> select *from student;
+-------+---------+----------+
| stdid | stdname | stdmarks |
+-------+---------+----------+
|     1 | meghana |       95 |
|     2 | anusha  |       85 |
|     3 | asritha |       75 |
+-------+---------+----------+
3 rows in set (0.00 sec)


