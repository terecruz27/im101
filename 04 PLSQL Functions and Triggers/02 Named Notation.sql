CREATE OR REPLACE PROCEDURE print_employee_info(
    emp_id_param IN NUMBER,
    emp_name_param IN VARCHAR2,
    emp_salary_param IN NUMBER
) IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_id_param);
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_name_param);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || emp_salary_param);
END;
/


BEGIN
    print_employee_info(
        emp_id_param => 101,
        emp_name_param => 'John Doe',
        emp_salary_param => 50000
    );
END;
/





BEGIN
    print_employee_info(
        emp_salary_param => 60000,
        emp_name_param => 'Jane Smith',
        emp_id_param => 102
    );
END;
/