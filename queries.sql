--Run operations and analsyis queries here

SELECT * FROM employees;

--Find average salary by department
SELECT department, AVG(salary)
FROM employees
GROUP BY department;

SELECT * FROM employees;

--To see how many employees
SELECT COUNT(*) employees;


--Top 5 highest paid employees, descending order
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;

--Average salary by department
SELECT department, AVG(salary) AS average_salary
FROM employees  
GROUP BY department;

--Number of employees in each department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

--Employees hired after 2021
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > '2021-12-31';

--Department with the highest average salary
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
ORDER BY average_salary DESC
LIMIT 1;



