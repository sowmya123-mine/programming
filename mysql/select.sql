sudo mysql;
[sudo] password for rguktongole: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
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
| information_schema |
| linuxhint          |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
8 rows in set (0.03 sec)

mysql> use E2CSE4;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+------------------+
| Tables_in_E2CSE4 |
+------------------+
| CSE4             |
+------------------+
1 row in set (0.00 sec)

mysql> use CSESEC4;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+-------------------+
| Tables_in_CSESEC4 |
+-------------------+
| sec4              |
+-------------------+
1 row in set (0.00 sec)

mysql> select *from sec4;
+-----+-------+------+---------------+
| sid | sname | sage | sphno         |
+-----+-------+------+---------------+
|   1 | aa    |   18 | 74160009992   |
|   2 | bb    |   18 | 2763787382    |
|   3 | cc    |   18 | 9288291222    |
|   4 | dd    |   18 | 9682166320    |
|   5 | ee    |   18 | 7702145090    |
|   6 | ff    |   18 | 96405049788   |
|   7 | gg    |   18 | 9238384788    |
|   8 | hh    |   18 | 2973832868    |
|   9 | ii    |   18 | 7168233789    |
|  10 | jj    |   18 | 2673623289    |
|  11 | kk    |   18 | 9702323289    |
|  12 | ll    |   18 | 9281281289    |
|  13 | mm    |   18 | 9466548889    |
|  14 | nn    |   18 | 4878374889    |
|  15 | oo    |   18 | 3874777689    |
|  16 | pp    |   18 | 7878236789    |
|  17 | qq    |   18 | 2783747854    |
|  18 | rr    |   18 | 3871367654    |
|  19 | ss    |   18 | 2837863327    |
|  20 | tt    |   18 | 2782676227    |
|  21 | uu    |   18 | 6736747347    |
|  22 | vv    |   18 | 3783478457    |
|  24 | yy    |   18 | 3676677680    |
|  25 | yy    |   18 | 9887377680    |
|  26 | zz    |   18 | 3778977310    |
|  27 | aaa   |   18 | 9812766710    |
|  28 | bbb   |   18 | 4934874323    |
|  29 | ccc   |   18 | 26732738383   |
|  30 | ddd   |   18 | 4386737383    |
|  31 | eee   |   18 | 99265272833   |
|  32 | fff   |   18 | 27827677367   |
|  33 | ggg   |   18 | 28928732638   |
|  34 | hhh   |   18 | 98727621238   |
|  35 | iii   |   18 | 23897728738   |
|  36 | jjj   |   18 | 21383787337   |
|  37 | kkk   |   18 | 37273763627   |
|  38 | lll   |   18 | 23783788383   |
|  39 | mmm   |   18 | 92387812672   |
|  40 | nnn   |   18 | 98927672633   |
|  41 | ooo   |   18 | 977636363674  |
|  42 | ppp   |   18 | 986645235563  |
|  43 | qqq   |   18 | 32187368271   |
|  44 | rrr   |   18 | 978376216333  |
|  45 | sss   |   18 | 373637467343  |
|  46 | ttt   |   18 | 993516576144  |
|  47 | uuu   |   18 | 261537653564  |
|  48 | vvv   |   18 | 987872363216  |
|  49 | www   |   18 | 237164237647  |
|  50 | xxx   |   18 | 873676533164  |
|  51 | yyy   |   18 | 237213612765  |
|  52 | zzz   |   18 | 373647326473  |
|  53 | aaaa  |   18 | 3213766473    |
|  54 | bbbb  |   18 | 2361253173    |
|  55 | cccc  |   18 | 78374366367   |
|  56 | dddd  |   18 | 73636725652   |
|  57 | eeee  |   18 | 9837265652    |
|  58 | ffff  |   18 | 76316536132   |
|  59 | gggg  |   18 | 73627863328   |
|  60 | hhhh  |   18 | 37163763238   |
|  61 | iiii  |   18 | 37463278463   |
|  62 | jjjj  |   18 | 238712873245  |
|  63 | kkkk  |   18 | 77367537638   |
|  64 | llll  |   18 | 23162321332   |
|  65 | mmmm  |   18 | 97877263762   |
|  66 | nnnn  |   18 | 73653536753   |
|  67 | oooo  |   18 | 23536125369   |
|  68 | pppp  |   18 | 36376363653   |
|  69 | qqqq  |   18 | 35165176316   |
|  70 | rrrr  |   18 | 674633243236  |
|  71 | ssss  |   18 | 376173133244  |
|  72 | tttt  |   18 | 467554643244  |
|  73 | uuuu  |   18 | 21365764379   |
|  74 | vvvv  |   18 | 872753651236  |
|  75 | wwww  |   18 | 3764732474754 |
|  76 | xxxx  |   18 | 634525632637  |
|  77 | yyyy  |   18 | 2736353532354 |
|  78 | zzzz  |   18 | 982787222324  |
|  79 | aaaaa |   18 | 987636753134  |
|  80 | bbbbb |   18 | 235543255644  |
|  81 | ccccc |   18 | 237173652176  |
|  82 | ddddd |   18 | 97372538176   |
|  83 | eeeee |   18 | 98376535623   |
|  84 | fffff |   18 | 36536124353   |
|  85 | ggggg |   18 | 98631275653   |
|  86 | hhhhh |   18 | 987673562     |
|  87 | iiiii |   18 | 2376372378    |
|  88 | jjjjj |   18 | 8371283688    |
|  89 | kkkkk |   18 | 76476343544   |
|  90 | lllll |   18 | 8432463236    |
+-----+-------+------+---------------+
89 rows in set (0.00 sec)

mysql> select *from sec4 where sid>18;
+-----+-------+------+---------------+
| sid | sname | sage | sphno         |
+-----+-------+------+---------------+
|  19 | ss    |   18 | 2837863327    |
|  20 | tt    |   18 | 2782676227    |
|  21 | uu    |   18 | 6736747347    |
|  22 | vv    |   18 | 3783478457    |
|  24 | yy    |   18 | 3676677680    |
|  25 | yy    |   18 | 9887377680    |
|  26 | zz    |   18 | 3778977310    |
|  27 | aaa   |   18 | 9812766710    |
|  28 | bbb   |   18 | 4934874323    |
|  29 | ccc   |   18 | 26732738383   |
|  30 | ddd   |   18 | 4386737383    |
|  31 | eee   |   18 | 99265272833   |
|  32 | fff   |   18 | 27827677367   |
|  33 | ggg   |   18 | 28928732638   |
|  34 | hhh   |   18 | 98727621238   |
|  35 | iii   |   18 | 23897728738   |
|  36 | jjj   |   18 | 21383787337   |
|  37 | kkk   |   18 | 37273763627   |
|  38 | lll   |   18 | 23783788383   |
|  39 | mmm   |   18 | 92387812672   |
|  40 | nnn   |   18 | 98927672633   |
|  41 | ooo   |   18 | 977636363674  |
|  42 | ppp   |   18 | 986645235563  |
|  43 | qqq   |   18 | 32187368271   |
|  44 | rrr   |   18 | 978376216333  |
|  45 | sss   |   18 | 373637467343  |
|  46 | ttt   |   18 | 993516576144  |
|  47 | uuu   |   18 | 261537653564  |
|  48 | vvv   |   18 | 987872363216  |
|  49 | www   |   18 | 237164237647  |
|  50 | xxx   |   18 | 873676533164  |
|  51 | yyy   |   18 | 237213612765  |
|  52 | zzz   |   18 | 373647326473  |
|  53 | aaaa  |   18 | 3213766473    |
|  54 | bbbb  |   18 | 2361253173    |
|  55 | cccc  |   18 | 78374366367   |
|  56 | dddd  |   18 | 73636725652   |
|  57 | eeee  |   18 | 9837265652    |
|  58 | ffff  |   18 | 76316536132   |
|  59 | gggg  |   18 | 73627863328   |
|  60 | hhhh  |   18 | 37163763238   |
|  61 | iiii  |   18 | 37463278463   |
|  62 | jjjj  |   18 | 238712873245  |
|  63 | kkkk  |   18 | 77367537638   |
|  64 | llll  |   18 | 23162321332   |
|  65 | mmmm  |   18 | 97877263762   |
|  66 | nnnn  |   18 | 73653536753   |
|  67 | oooo  |   18 | 23536125369   |
|  68 | pppp  |   18 | 36376363653   |
|  69 | qqqq  |   18 | 35165176316   |
|  70 | rrrr  |   18 | 674633243236  |
|  71 | ssss  |   18 | 376173133244  |
|  72 | tttt  |   18 | 467554643244  |
|  73 | uuuu  |   18 | 21365764379   |
|  74 | vvvv  |   18 | 872753651236  |
|  75 | wwww  |   18 | 3764732474754 |
|  76 | xxxx  |   18 | 634525632637  |
|  77 | yyyy  |   18 | 2736353532354 |
|  78 | zzzz  |   18 | 982787222324  |
|  79 | aaaaa |   18 | 987636753134  |
|  80 | bbbbb |   18 | 235543255644  |
|  81 | ccccc |   18 | 237173652176  |
|  82 | ddddd |   18 | 97372538176   |
|  83 | eeeee |   18 | 98376535623   |
|  84 | fffff |   18 | 36536124353   |
|  85 | ggggg |   18 | 98631275653   |
|  86 | hhhhh |   18 | 987673562     |
|  87 | iiiii |   18 | 2376372378    |
|  88 | jjjjj |   18 | 8371283688    |
|  89 | kkkkk |   18 | 76476343544   |
|  90 | lllll |   18 | 8432463236    |
+-----+-------+------+---------------+
71 rows in set (0.00 sec)

mysql> select min(sid) from sec4;
+----------+
| min(sid) |
+----------+
|        1 |
+----------+
1 row in set (0.33 sec)

mysql> select max(sid) from sec4;
+----------+
| max(sid) |
+----------+
|       90 |
+----------+
1 row in set (0.00 sec)

mysql> select sid,sname order by sname;
ERROR 1054 (42S22): Unknown column 'sid' in 'field list'
mysql> select sname from sec4 order by sec4;
ERROR 1054 (42S22): Unknown column 'sec4' in 'order clause'
mysql> select sname from sec4 order by sname;
+-------+
| sname |
+-------+
| aa    |
| aaa   |
| aaaa  |
| aaaaa |
| bb    |
| bbb   |
| bbbb  |
| bbbbb |
| cc    |
| ccc   |
| cccc  |
| ccccc |
| dd    |
| ddd   |
| dddd  |
| ddddd |
| ee    |
| eee   |
| eeee  |
| eeeee |
| ff    |
| fff   |
| ffff  |
| fffff |
| gg    |
| ggg   |
| gggg  |
| ggggg |
| hh    |
| hhh   |
| hhhh  |
| hhhhh |
| ii    |
| iii   |
| iiii  |
| iiiii |
| jj    |
| jjj   |
| jjjj  |
| jjjjj |
| kk    |
| kkk   |
| kkkk  |
| kkkkk |
| ll    |
| lll   |
| llll  |
| lllll |
| mm    |
| mmm   |
| mmmm  |
| nn    |
| nnn   |
| nnnn  |
| oo    |
| ooo   |
| oooo  |
| pp    |
| ppp   |
| pppp  |
| qq    |
| qqq   |
| qqqq  |
| rr    |
| rrr   |
| rrrr  |
| ss    |
| sss   |
| ssss  |
| tt    |
| ttt   |
| tttt  |
| uu    |
| uuu   |
| uuuu  |
| vv    |
| vvv   |
| vvvv  |
| www   |
| wwww  |
| xxx   |
| xxxx  |
| yy    |
| yy    |
| yyy   |
| yyyy  |
| zz    |
| zzz   |
| zzzz  |
+-------+
89 rows in set (0.00 sec)

mysql> select sid,sname from sec4 order by sname;
+-----+-------+
| sid | sname |
+-----+-------+
|   1 | aa    |
|  27 | aaa   |
|  53 | aaaa  |
|  79 | aaaaa |
|   2 | bb    |
|  28 | bbb   |
|  54 | bbbb  |
|  80 | bbbbb |
|   3 | cc    |
|  29 | ccc   |
|  55 | cccc  |
|  81 | ccccc |
|   4 | dd    |
|  30 | ddd   |
|  56 | dddd  |
|  82 | ddddd |
|   5 | ee    |
|  31 | eee   |
|  57 | eeee  |
|  83 | eeeee |
|   6 | ff    |
|  32 | fff   |
|  58 | ffff  |
|  84 | fffff |
|   7 | gg    |
|  33 | ggg   |
|  59 | gggg  |
|  85 | ggggg |
|   8 | hh    |
|  34 | hhh   |
|  60 | hhhh  |
|  86 | hhhhh |
|   9 | ii    |
|  35 | iii   |
|  61 | iiii  |
|  87 | iiiii |
|  10 | jj    |
|  36 | jjj   |
|  62 | jjjj  |
|  88 | jjjjj |
|  11 | kk    |
|  37 | kkk   |
|  63 | kkkk  |
|  89 | kkkkk |
|  12 | ll    |
|  38 | lll   |
|  64 | llll  |
|  90 | lllll |
|  13 | mm    |
|  39 | mmm   |
|  65 | mmmm  |
|  14 | nn    |
|  40 | nnn   |
|  66 | nnnn  |
|  15 | oo    |
|  41 | ooo   |
|  67 | oooo  |
|  16 | pp    |
|  42 | ppp   |
|  68 | pppp  |
|  17 | qq    |
|  43 | qqq   |
|  69 | qqqq  |
|  18 | rr    |
|  44 | rrr   |
|  70 | rrrr  |
|  19 | ss    |
|  45 | sss   |
|  71 | ssss  |
|  20 | tt    |
|  46 | ttt   |
|  72 | tttt  |
|  21 | uu    |
|  47 | uuu   |
|  73 | uuuu  |
|  22 | vv    |
|  48 | vvv   |
|  74 | vvvv  |
|  49 | www   |
|  75 | wwww  |
|  50 | xxx   |
|  76 | xxxx  |
|  25 | yy    |
|  24 | yy    |
|  51 | yyy   |
|  77 | yyyy  |
|  26 | zz    |
|  52 | zzz   |
|  78 | zzzz  |
+-----+-------+
89 rows in set (0.00 sec)

mysql> select sname from sec4 order by sname desc;
+-------+
| sname |
+-------+
| zzzz  |
| zzz   |
| zz    |
| yyyy  |
| yyy   |
| yy    |
| yy    |
| xxxx  |
| xxx   |
| wwww  |
| www   |
| vvvv  |
| vvv   |
| vv    |
| uuuu  |
| uuu   |
| uu    |
| tttt  |
| ttt   |
| tt    |
| ssss  |
| sss   |
| ss    |
| rrrr  |
| rrr   |
| rr    |
| qqqq  |
| qqq   |
| qq    |
| pppp  |
| ppp   |
| pp    |
| oooo  |
| ooo   |
| oo    |
| nnnn  |
| nnn   |
| nn    |
| mmmm  |
| mmm   |
| mm    |
| lllll |
| llll  |
| lll   |
| ll    |
| kkkkk |
| kkkk  |
| kkk   |
| kk    |
| jjjjj |
| jjjj  |
| jjj   |
| jj    |
| iiiii |
| iiii  |
| iii   |
| ii    |
| hhhhh |
| hhhh  |
| hhh   |
| hh    |
| ggggg |
| gggg  |
| ggg   |
| gg    |
| fffff |
| ffff  |
| fff   |
| ff    |
| eeeee |
| eeee  |
| eee   |
| ee    |
| ddddd |
| dddd  |
| ddd   |
| dd    |
| ccccc |
| cccc  |
| ccc   |
| cc    |
| bbbbb |
| bbbb  |
| bbb   |
| bb    |
| aaaaa |
| aaaa  |
| aaa   |
| aa    |
+-------+
89 rows in set (0.00 sec)

mysql> select sname from sec4 count(sname);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'count(sname)' at line 1
mysql> select count(sname) from sec4;
+--------------+
| count(sname) |
+--------------+
|           89 |
+--------------+
1 row in set (0.00 sec)

mysql> select distinct(sphno) from sec4;
+---------------+
| sphno         |
+---------------+
| 74160009992   |
| 2763787382    |
| 9288291222    |
| 9682166320    |
| 7702145090    |
| 96405049788   |
| 9238384788    |
| 2973832868    |
| 7168233789    |
| 2673623289    |
| 9702323289    |
| 9281281289    |
| 9466548889    |
| 4878374889    |
| 3874777689    |
| 7878236789    |
| 2783747854    |
| 3871367654    |
| 2837863327    |
| 2782676227    |
| 6736747347    |
| 3783478457    |
| 3676677680    |
| 9887377680    |
| 3778977310    |
| 9812766710    |
| 4934874323    |
| 26732738383   |
| 4386737383    |
| 99265272833   |
| 27827677367   |
| 28928732638   |
| 98727621238   |
| 23897728738   |
| 21383787337   |
| 37273763627   |
| 23783788383   |
| 92387812672   |
| 98927672633   |
| 977636363674  |
| 986645235563  |
| 32187368271   |
| 978376216333  |
| 373637467343  |
| 993516576144  |
| 261537653564  |
| 987872363216  |
| 237164237647  |
| 873676533164  |
| 237213612765  |
| 373647326473  |
| 3213766473    |
| 2361253173    |
| 78374366367   |
| 73636725652   |
| 9837265652    |
| 76316536132   |
| 73627863328   |
| 37163763238   |
| 37463278463   |
| 238712873245  |
| 77367537638   |
| 23162321332   |
| 97877263762   |
| 73653536753   |
| 23536125369   |
| 36376363653   |
| 35165176316   |
| 674633243236  |
| 376173133244  |
| 467554643244  |
| 21365764379   |
| 872753651236  |
| 3764732474754 |
| 634525632637  |
| 2736353532354 |
| 982787222324  |
| 987636753134  |
| 235543255644  |
| 237173652176  |
| 97372538176   |
| 98376535623   |
| 36536124353   |
| 98631275653   |
| 987673562     |
| 2376372378    |
| 8371283688    |
| 76476343544   |
| 8432463236    |
+---------------+
89 rows in set (0.00 sec)

mysql> select distinct(sphno) as different from sec4;
+---------------+
| different     |
+---------------+
| 74160009992   |
| 2763787382    |
| 9288291222    |
| 9682166320    |
| 7702145090    |
| 96405049788   |
| 9238384788    |
| 2973832868    |
| 7168233789    |
| 2673623289    |
| 9702323289    |
| 9281281289    |
| 9466548889    |
| 4878374889    |
| 3874777689    |
| 7878236789    |
| 2783747854    |
| 3871367654    |
| 2837863327    |
| 2782676227    |
| 6736747347    |
| 3783478457    |
| 3676677680    |
| 9887377680    |
| 3778977310    |
| 9812766710    |
| 4934874323    |
| 26732738383   |
| 4386737383    |
| 99265272833   |
| 27827677367   |
| 28928732638   |
| 98727621238   |
| 23897728738   |
| 21383787337   |
| 37273763627   |
| 23783788383   |
| 92387812672   |
| 98927672633   |
| 977636363674  |
| 986645235563  |
| 32187368271   |
| 978376216333  |
| 373637467343  |
| 993516576144  |
| 261537653564  |
| 987872363216  |
| 237164237647  |
| 873676533164  |
| 237213612765  |
| 373647326473  |
| 3213766473    |
| 2361253173    |
| 78374366367   |
| 73636725652   |
| 9837265652    |
| 76316536132   |
| 73627863328   |
| 37163763238   |
| 37463278463   |
| 238712873245  |
| 77367537638   |
| 23162321332   |
| 97877263762   |
| 73653536753   |
| 23536125369   |
| 36376363653   |
| 35165176316   |
| 674633243236  |
| 376173133244  |
| 467554643244  |
| 21365764379   |
| 872753651236  |
| 3764732474754 |
| 634525632637  |
| 2736353532354 |
| 982787222324  |
| 987636753134  |
| 235543255644  |
| 237173652176  |
| 97372538176   |
| 98376535623   |
| 36536124353   |
| 98631275653   |
| 987673562     |
| 2376372378    |
| 8371283688    |
| 76476343544   |
| 8432463236    |
+---------------+
89 rows in set (0.00 sec)

mysql> select avg(sid) from sec4;
+----------+
| avg(sid) |
+----------+
|  45.7528 |
+----------+
1 row in set (0.00 sec)

mysql> select sum(sid) from sec4;
+----------+
| sum(sid) |
+----------+
|     4072 |
+----------+
1 row in set (0.00 sec)

mysql> select sname from sec4 group by sid;
+-------+
| sname |
+-------+
| aa    |
| bb    |
| cc    |
| dd    |
| ee    |
| ff    |
| gg    |
| hh    |
| ii    |
| jj    |
| kk    |
| ll    |
| mm    |
| nn    |
| oo    |
| pp    |
| qq    |
| rr    |
| ss    |
| tt    |
| uu    |
| vv    |
| yy    |
| yy    |
| zz    |
| aaa   |
| bbb   |
| ccc   |
| ddd   |
| eee   |
| fff   |
| ggg   |
| hhh   |
| iii   |
| jjj   |
| kkk   |
| lll   |
| mmm   |
| nnn   |
| ooo   |
| ppp   |
| qqq   |
| rrr   |
| sss   |
| ttt   |
| uuu   |
| vvv   |
| www   |
| xxx   |
| yyy   |
| zzz   |
| aaaa  |
| bbbb  |
| cccc  |
| dddd  |
| eeee  |
| ffff  |
| gggg  |
| hhhh  |
| iiii  |
| jjjj  |
| kkkk  |
| llll  |
| mmmm  |
| nnnn  |
| oooo  |
| pppp  |
| qqqq  |
| rrrr  |
| ssss  |
| tttt  |
| uuuu  |
| vvvv  |
| wwww  |
| xxxx  |
| yyyy  |
| zzzz  |
| aaaaa |
| bbbbb |
| ccccc |
| ddddd |
| eeeee |
| fffff |
| ggggg |
| hhhhh |
| iiiii |
| jjjjj |
| kkkkk |
| lllll |
+-------+
89 rows in set (0.01 sec)

mysql> select sid,sname from sec4 group by sid;
+-----+-------+
| sid | sname |
+-----+-------+
|   1 | aa    |
|   2 | bb    |
|   3 | cc    |
|   4 | dd    |
|   5 | ee    |
|   6 | ff    |
|   7 | gg    |
|   8 | hh    |
|   9 | ii    |
|  10 | jj    |
|  11 | kk    |
|  12 | ll    |
|  13 | mm    |
|  14 | nn    |
|  15 | oo    |
|  16 | pp    |
|  17 | qq    |
|  18 | rr    |
|  19 | ss    |
|  20 | tt    |
|  21 | uu    |
|  22 | vv    |
|  24 | yy    |
|  25 | yy    |
|  26 | zz    |
|  27 | aaa   |
|  28 | bbb   |
|  29 | ccc   |
|  30 | ddd   |
|  31 | eee   |
|  32 | fff   |
|  33 | ggg   |
|  34 | hhh   |
|  35 | iii   |
|  36 | jjj   |
|  37 | kkk   |
|  38 | lll   |
|  39 | mmm   |
|  40 | nnn   |
|  41 | ooo   |
|  42 | ppp   |
|  43 | qqq   |
|  44 | rrr   |
|  45 | sss   |
|  46 | ttt   |
|  47 | uuu   |
|  48 | vvv   |
|  49 | www   |
|  50 | xxx   |
|  51 | yyy   |
|  52 | zzz   |
|  53 | aaaa  |
|  54 | bbbb  |
|  55 | cccc  |
|  56 | dddd  |
|  57 | eeee  |
|  58 | ffff  |
|  59 | gggg  |
|  60 | hhhh  |
|  61 | iiii  |
|  62 | jjjj  |
|  63 | kkkk  |
|  64 | llll  |
|  65 | mmmm  |
|  66 | nnnn  |
|  67 | oooo  |
|  68 | pppp  |
|  69 | qqqq  |
|  70 | rrrr  |
|  71 | ssss  |
|  72 | tttt  |
|  73 | uuuu  |
|  74 | vvvv  |
|  75 | wwww  |
|  76 | xxxx  |
|  77 | yyyy  |
|  78 | zzzz  |
|  79 | aaaaa |
|  80 | bbbbb |
|  81 | ccccc |
|  82 | ddddd |
|  83 | eeeee |
|  84 | fffff |
|  85 | ggggg |
|  86 | hhhhh |
|  87 | iiiii |
|  88 | jjjjj |
|  89 | kkkkk |
|  90 | lllll |
+-----+-------+
89 rows in set (0.00 sec)


