CREATE OR REPLACE FUNCTION totalEmployees 
RETURN number IS 
   total number(2) := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM employees; 
    
   RETURN total; 
END; 
/ 