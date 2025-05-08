declare 
s number;
t number;
u number;
i number;
begin
s:=10;
t:=5;
u:=0;
if(s>t) then 
dbms_output.put_line(s);
else
dbms_output.put_line(t);
end if;
for i in 1..10 loop
u:=u+i;
end loop;
dbms_output.put_line(u);
end;


