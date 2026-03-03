//ONLY to be used for creating table and inserting DATABASE

CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    salary INTEGER,
    hire_date TEXT
);
INSERT INTO users (first_name, last_name, salary, hire_date) VALUES
('John', 'Doe', 50000, '2020-01-15'),
('Jane', 'Smith', 60000, '2019-03-22'),
('Emily', 'Johnson', 55000, '2021-07-10');
