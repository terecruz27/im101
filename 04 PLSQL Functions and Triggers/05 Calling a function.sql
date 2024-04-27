DECLARE 
   c number(2); 
BEGIN 
   c := totalEmployees(); 
   dbms_output.put_line('Total no. of Customers: ' || c); 
END; 
/