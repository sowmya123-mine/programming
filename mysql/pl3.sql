//input-1
begin
dbms_output.put_line('hai');
dbms_output.put_line('welcome');
dbms_output.put_line('pl/sql programs');
end;

//output
hai
welcome
pl/sql programs

Statement processed.


0.00 seconds

\\input-2
declare 
a number;
b number;
c number;
begin
a:=100;
b:=200;
c:=a+b;
dbms_output.put_line('the sum of two numers is:'||c);
end;

//output
the sum of two numers is:300

Statement processed.

//input-3

declare 
empno number;
ename varchar(20);
sal number(7,2);
anu_sal number(10,2);
bonus number(10,2);
begin
empno:=1234;
ename:='meghana';
sal:=18000;
anu_sal:=sal*12;
bonus:=anu_sal*20/100;
dbms_output.put_line('empno:'||empno);
dbms_output.put_line('ename:'||ename);
dbms_output.put_line('sal:'||sal);
dbms_output.put_line('bonus:'||bonus);
end;

//output

empno:1234
ename:meghana
sal:18000
bonus:43200

Statement processed.


0.01 seconds

//input-4

declare
prodno number;
pname varchar(20);
quan number(3);
price number(7,2);
total number(7,2);
discount number(7,2);
net number(7,2);
begin
prodno:=1234;
pname:='chocklates';
quan:=10;
price:=100;
total:=quan*price;
discount:=total*20/100;
net:=total-discount;
dbms_output.put_line('prodno:'||prodno);
dbms_output.put_line('pname:'||pname);
dbms_output.put_line('qunatity:'||quan);
dbms_output.put_line('price:'||price);
dbms_output.put_line('total:'||total);
dbms_output.put_line('discount:'||discount);
dbms_output.put_line('net balance:'||net);
end;

//output
prodno:1234
pname:chocklates
qunatity:10
price:100
total:1000
discount:200
net balance:800

Statement processed.

//input-5
declare 
empno number;
sal number;
anu_sal number(7,2);
bonus number(7,2);
begin
empno:=1234;
sal:=8000;
anu_sal:=sal*12;
if sal>=10000 then
bonus:=anu_sal*20/100;
elsif sal>=5000 and sal<5000 then
bonus:=anu_sal*12/100;
elsif sal>=1500 and sal<3000 then
bonus:=anu_sal*10/100;
else
bonus:=anu_sal*8/100;
end if;
dbms_output.put_line('empno:'||empno);
dbms_output.put_line('sal:'||sal);
dbms_output.put_line('anu_sal:'||anu_sal);
dbms_output.put_line('bonus:'||bonus);
end;

//output

empno:1234
sal:8000
anu_sal:96000
bonus:7680

Statement processed.


0.01 seconds


