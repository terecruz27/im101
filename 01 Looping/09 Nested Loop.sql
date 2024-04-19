
BEGIN
    FOR v_outerloop IN 1..10 LOOP
        FOR v_innerloop IN REVERSE 1..3 LOOP
            DBMS_OUTPUT.PUT_LINE('Outer loop is: ' ||
                v_outerloop ||
                'and inner loop is: ' ||
                v_innerloop);
        END LOOP;
    END LOOP;
END;
