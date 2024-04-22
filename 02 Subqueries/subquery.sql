
/**
Subqueries (in the Select, from and Where Statement)
*/

SELECT * FROM employees;

-- Subquery in Select
SELECT employee_id, salary, (SELECT AVG(Salary) FROM employees) AS AllAvgSalary
FROM employees;

-- Subquery in From
SELECT a.employee_id, a.first_name, AllAvgSalary
FROM (SELECT employee_id, first_name, salary, AVG(salary) OVER () AS AllAvgSalary FROM employees) a;

-- Subquery in Where
SELECT employee_id, salary, job_id
FROM employees
WHERE job_id IN (
		SELECT job_id FROM jobs);