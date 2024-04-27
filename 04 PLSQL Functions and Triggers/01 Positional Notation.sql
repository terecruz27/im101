
CREATE OR REPLACE FUNCTION decimal_to_binary(decimal_num IN NUMBER) RETURN VARCHAR2 IS
    binary_num VARCHAR2(100);
    quotient NUMBER := decimal_num;
    remainder NUMBER;
BEGIN
    WHILE quotient > 0 LOOP
        remainder := MOD(quotient, 2);
        binary_num := TO_CHAR(remainder) || binary_num;
        quotient := FLOOR(quotient / 2);
    END LOOP;
    
    RETURN binary_num;
END;
/

DECLARE
    decimal_num NUMBER := 25;
    binary_num VARCHAR2(100);
BEGIN
    binary_num := decimal_to_binary(decimal_num);
    DBMS_OUTPUT.PUT_LINE('Binary representation of ' || decimal_num || ' is ' || binary_num);
END;
/
