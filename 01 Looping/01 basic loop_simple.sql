DECLARE
    v_counter NUMBER (2) := 2;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('Loop execution #' || v_counter);
        v_counter := v_counter + 1;
        EXIT WHEN v_counter > 5;
    END LOOP;
END;