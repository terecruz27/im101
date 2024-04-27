CREATE OR REPLACE PROCEDURE print_employee_info(
    emp_id_param IN NUMBER,
    emp_name_param IN VARCHAR2,
    emp_salary_param IN NUMBER,
    emp_department_param IN VARCHAR2 DEFAULT NULL
) IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_id_param);
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_name_param);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || emp_salary_param);
    IF emp_department_param IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('Employee Department: ' || emp_department_param);
    END IF;
END;
/

BEGIN
    print_employee_info(101, 'John Doe', 50000, emp_department_param => 'Sales');
END;
/

BEGIN
    print_employee_info(emp_name_param => 'Jane Smith', emp_id_param => 102, emp_salary_param => 60000);
END;
/