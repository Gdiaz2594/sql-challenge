
-- Data Engineering

-- Create a departments table
CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
);

-- Create a dept_emp table
CREATE TABLE dept_emp (
	emp_no INTEGER,
	dept_no VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR
);

-- Create a dept_manager table
DROP TABLE dept_manager;
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INTEGER,
	from_date VARCHAR,
	to_date VARCHAR
);

-- Create a employees table
CREATE TABLE employees (
	emp_no INTEGER,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	gender CHAR,
	hire_date VARCHAR
);

-- Create a salaries table
CREATE TABLE salaries (
	emp_no INTEGER,
	salary INTEGER,
	from_date VARCHAR,
	to_date VARCHAR
);

-- Create a titles table
CREATE TABLE titles (
	emp_no INTEGER,
	title VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR
);