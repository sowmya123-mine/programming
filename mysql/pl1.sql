\\input

declare 
  a number;
  b number;
  c number;
  begin
   a:=5;
   b:=6;
   c:=20;
   if a>b then
    if a>c then
      dbms_output.put_line(a);
    else
      dbms_output.put_line(c);
   end if;
elsif b>c then 
   dbms_output.put_line(b);
else
   dbms_output.put_line(c);
end if;
end;

\\output

20

Statement processed.


0.00 seconds
