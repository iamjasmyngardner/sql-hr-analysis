CREATE TABLE IF NOT EXISTS employees (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    department TEXT,
    salary INTEGER,
    hire_date TEXT
);
INSERT INTO employees (first_name, last_name, department, salary, hire_date) VALUES
('John', 'Doe', 'Engineering', 75000, '2020-01-15'),
('Jane', 'Smith', 'Marketing', 65000, '2019-03-22'),
('Emily', 'Johnson', 'Sales', 70000, '2021-07-30'),
('Michael', 'Brown', 'Engineering', 80000, '2018-11-05'),
('Sarah', 'Davis', 'HR', 60000, '2020-05-10');

SELECT * FROM employees;

SELECT * FROM employees
WHERE department = 'Engineering';

