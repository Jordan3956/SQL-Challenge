DROP TABLE IF EXISTS departments ;
DROP TABLE IF EXISTS dept_emp ;
DROP TABLE IF EXISTS dept_manager ;
DROP TABLE IF EXISTS employees ;
DROP TABLE IF EXISTS salaries ;
DROP TABLE IF EXISTS titles ;

CREATE TABLE departments (
dept_no VARCHAR PRIMARY KEY, 
dept_name VARCHAR NOT NULL
) ;

SELECT * FROM departments


CREATE TABLE employees(
emp_no INT PRIMARY KEY NOT NULL,
emp_title_id VARCHAR NOT NULL,	
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date DATE NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees


CREATE TABLE dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp

CREATE TABLE dept_manager (
dept_no VARCHAR NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_manager


CREATE TABLE salaries(
emp_no INT NOT NULL,
salary INT NOT NULL,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

--run first!
CREATE TABLE titles(
title_id VARCHAR PRIMARY KEY NOT NULL,
title VARCHAR NOT NULL
);


SELECT * FROM titles





