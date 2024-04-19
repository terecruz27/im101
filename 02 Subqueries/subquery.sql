
/**
Subqueries (in the Select, from and Where Statement)
*/

SELECT * FROM employees;

-- Subquery in Select
SELECT employee_id, salary, (SELECT AVG(Salary) FROM employees) AS AllAvgSalary
FROM employees;

-- Subquery in From
SELECT a.employee_id, AllAvgSalary
FROM (SELECT employee_id, salary, AVG(salary) OVER () AS AllAvgSalary FROM employees) a;

-- Subquery in Where
SELECT employee_id, salary, job_id
FROM employees
WHERE job_id IN (
		SELECT job_id FROM job_history);