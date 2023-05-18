
--question 1 List the employee number, last name, first name, sex, and salary of each employee.
SELECT salaries.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON salaries.emp_no = employees.emp_no
ORDER BY salaries.emp_no;

--question 2 List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT last_name, first_name, hire_date 
FROM employees 
WHERE EXTRACT(year from hire_date) = 1986
;

--question 3 List the manager of each department along with their
--department number, department name, employee number, last name, and first name.
SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_manager.dept_no
;

--Question 4 List the department number for each employee along with that employee’s employee number,
--last name, first name, and department name.
SELECT dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
;

--question 5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.




