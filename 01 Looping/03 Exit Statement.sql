
DECLARE
    v_counter NUMBER := 1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('Counter is ' || v_counter);
        v_counter := v_counter+ 1;
        IF v_counter > 10 THEN EXIT;
        END IF;
    END LOOP;
END;

/