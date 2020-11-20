
--Data Analysis
--Once you have a complete database, do the following:

/* 1. List the following details of each employee: employee number, last name, 
first name, gender, and salary. */
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no=s.emp_no;

/* 2. List employees who were hired in 1986. */
SELECT * FROM employees
WHERE hire_date LIKE '1986%';

/* 3. List the manager of each department with the following information: department 
number, department name, the manager's employee number, last name, first name, and 
start and end employment dates. */
SELECT de.dept_no, de.dept_name, dm.emp_no, em.last_name, 
em.first_name, dm.from_date, dm.to_date
FROM dept_manager AS dm
INNER JOIN departments AS de
ON dm.dept_no=de.dept_no
INNER JOIN employees AS em
ON dm.emp_no=em.emp_no;

/* 4. List the department of each employee with the following information: employee 
number, last name, first name, and department name. */
SELECT de.emp_no, em.last_name, em.first_name, d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS em
ON de.emp_no=em.emp_no
INNER JOIN departments AS d
ON de.dept_no=d.dept_no;

/* 5. List all employees whose first name is "Hercules" and last names begin with "B." */
SELECT * FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

/* 6. List all employees in the Sales department, including their employee number, 
last name, first name, and department name. */
SELECT de.emp_no, em.last_name, em.first_name, d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS em
ON de.emp_no=em.emp_no
INNER JOIN departments AS d
ON de.dept_no=d.dept_no
WHERE dept_name = 'Sales';

/* 7. List all employees in the Sales and Development departments, including their 
employee number, last name, first name, and department name. */
SELECT de.emp_no, em.last_name, em.first_name, d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS em
ON de.emp_no=em.emp_no
INNER JOIN departments AS d
ON de.dept_no=d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

/* 8. In descending order, list the frequency count of employee last names, i.e., how 
many employees share each last name. */
SELECT last_name, count(*) AS frequency_count
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;
