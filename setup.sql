--Building database from scratch

DELETE FROM employees;

INSERT INTO employees (first_name, last_name, department, salary, hire_date)
VALUES ('Test', 'User', 'IT', 50000, '2024-01-01');

INSERT INTO employees (first_name, last_name, department, salary, hire_date)
VALUES
('Kevin', 'Brown', 'Finance', 72000, '2022-05-12'),
('Lisa', 'Taylor', 'IT', 91000, '2020-09-15');

INSERT INTO employees (first_name, last_name, department, salary, hire_date)
VALUES
('Jasmyn', 'Gardner', 'IT', 85000, '2021-09-01');

//Reset table for testing purposes
DELETE FROM employees;

INSERT INTO employees (first_name, last_name, department, salary, hire_date)
VALUES
('James','Wilson','HR',62000,'2021-03-15'),
('Maria','Garcia','Finance',78000,'2020-06-12'),
('David','Lee','IT',95000,'2019-09-20'),
('Sarah','Johnson','Marketing',72000,'2022-01-10'),
('Michael','Brown','IT',88000,'2021-11-05'),
('Linda','Taylor','HR',64000,'2023-02-18'),
('Robert','Martinez','Finance',81000,'2020-07-23'),
('Jennifer','Anderson','Marketing',70000,'2022-08-30'),
('William','Thomas','IT',99000,'2018-04-11'),
('Elizabeth','Jackson','Finance',76000,'2021-05-06'),
('Christopher','White','IT',91000,'2019-12-01'),
('Jessica','Harris','HR',63000,'2022-09-14'),
('Daniel','Clark','Marketing',74000,'2020-10-28'),
('Ashley','Lewis','Finance',79000,'2021-07-19'),
('Matthew','Walker','IT',97000,'2018-11-09'),
('Amanda','Hall','Marketing',71000,'2023-01-25'),
('Joshua','Allen','Finance',82000,'2019-03-17'),
('Stephanie','Young','HR',65000,'2022-04-21'),
('Andrew','King','IT',93000,'2020-02-13'),
('Nicole','Wright','Marketing',73000,'2021-12-07');



