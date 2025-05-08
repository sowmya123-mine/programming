declare
 a number:=55;
 b number:=5;
 arth_operation varchar(20):='multiply'
 begin
  dbms_output.putline('program started');
  case(arth_operation)
   when 'add' then
      dbms_output.put_line('addition:'||a+b);
   when 'subtract' then
      dbms_output.put_line('subtraction:'||a-b);
   when 'multiply' then
      dbms_output.put_line('multiplication:'||a*b);
   when 'divide' then
      dbms_output.put_line('division:'||a/b);
   else 
     dbms_output.put_line('invalid');
end case;
  dbms_output.put_line('program completed');
end;


