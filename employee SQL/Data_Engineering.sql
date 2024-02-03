-- Create titles
CREATE TABLE titles (
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR(255) NOT NULL,
    PRIMARY KEY (title_id)
);

-- Display data from titles
SELECT * FROM titles;

-- Create employees
CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);

-- Display data from employees
SELECT * FROM employees;

-- Create departments
CREATE TABLE departments (
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (dept_no)
);

-- Display data from departments
SELECT * FROM departments;

-- Create dept_emp with FK
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Display data from dept_emp
SELECT * FROM dept_emp;

-- Create dept_manager with FK
CREATE TABLE dept_manager (
    dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Display data from dept_manager
SELECT * FROM dept_manager;

-- Create salaries
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no)
);

-- Display data from salaries
SELECT * FROM salaries;
