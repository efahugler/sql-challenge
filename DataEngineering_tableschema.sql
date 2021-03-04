--Eliminate Data 
--Create employees table
DROP TABLE IF EXISTS employees;
create table employees (
	emp_no INT PRIMARY KEY NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(35) NOT NULL,
	last_name VARCHAR(35) NOT NULL,
	gender VARCHAR(1)NOT NULL
);

-- Create departments table
DROP TABLE IF EXISTS departments;
create table departments (
	dept_no VARCHAR(10) primary key NOT NULL,
	dept_name VARCHAR(35) NOT NULL
);

-- Create department employee table
DROP TABLE IF EXISTS dept_emp;
create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(8) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
  foreign key (emp_no) references employees (emp_no),
  foreign key (dept_no) references departments (dept_no)
);

-- Create salaries table
DROP TABLE IF EXISTS salaries;
create table salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
  foreign key (emp_no) references employees (emp_no)
);

-- Create Department manager table
DROP TABLE IF EXISTS dept_manager;
create table dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
  foreign key (emp_no) references employees (emp_no),
  foreign key (dept_no) references departments (dept_no)
);

-- Create titles table
DROP TABLE IF EXISTS titles;
create table titles (
	emp_no INT NOT NULL,
	title VARCHAR(35) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
  foreign key (emp_no) references employees (emp_no)
);


-- Query * FROM Each Table Confirming Data
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM salaries;
SELECT * FROM dept_manager;
SELECT * FROM titles;

