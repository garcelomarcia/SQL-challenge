
CREATE TABLE titles(
title_id VARCHAR(10) PRIMARY KEY NOT NULL,
title VARCHAR(30));

CREATE TABLE employees(
emp_no INT PRIMARY KEY NOT NULL,
emp_title VARCHAR(10),
FOREIGN KEY (emp_title)REFERENCES titles(title_id),
birth_date Date,
first_name VARCHAR(20),
last_name VARCHAR(20),
sex CHAR,
hire_date Date);

CREATE TABLE salaries(
emp_no INT NOT NULL,
FOREIGN KEY (emp_no)REFERENCES employees(emp_no),
salary INT);

CREATE TABLE departments(
dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
dept_name VARCHAR(20));

CREATE TABLE dept_manager(
dept_no VARCHAR(10) NOT NULL,
FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
emp_no INT NOT NULL,
FOREIGN KEY (emp_no)REFERENCES employees(emp_no));

CREATE TABLE dept_emp(
emp_no INT NOT NULL,
FOREIGN KEY (emp_no)REFERENCES employees(emp_no),
dept_no VARCHAR(10) NOT NULL,
FOREIGN KEY(dept_no) REFERENCES departments(dept_no));