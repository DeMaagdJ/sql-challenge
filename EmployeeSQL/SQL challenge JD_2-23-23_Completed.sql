--Data Analysis Q#1 List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no=s.emp_no
;

--Data Analysis Q#2 List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e
WHERE e.hire_date > '1985-12-31'
;

--Data Analysis Q#3 List the manager of each department along with their department number, department name, employee number, 
--last name, and first name.
SELECT man.emp_no, dept.dept_no, e.last_name, e.first_name, dept.dept_name
FROM employees AS e
INNER JOIN dept_manager AS man ON e.emp_no=man.emp_no
INNER JOIN departments AS dept ON dept.dept_no= man.dept_no
;

--Data Analysis Q#4 List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name.
SELECT depte.dept_no, depte.emp_no, e.last_name, e.First_name, dept.dept_name
FROM employees AS e
INNER JOIN dept_emp AS depte ON e.emp_no=depte.emp_no
INNER JOIN departments AS dept ON dept.dept_no= depte.dept_no

--Data Analysis Q#5 List first name, last name, and sex of each employee whose first name is Hercules 
--and whose last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

--Data Analysis Q#6 List each employee in the Sales department, including their employee number, last name, and first name.
SELECT depte.emp_no, e.last_name, e.first_name
FROM employees AS e
INNER JOIN dept_emp AS depte ON e.emp_no=depte.emp_no
INNER JOIN departments AS dept ON dept.dept_no= depte.dept_no
WHERE dept.dept_name IN ('Sales') --AND depte.emp_no IN ('111035', '111133 ) --Statement to verify managers where included in query
;

--Data Analysis Q#7 List each employee in the Sales and Development departments, including their employee number, last name, 
--first name, and department name.
SELECT depte.emp_no, e.last_name, e.first_name, dept.dept_name
FROM employees AS e
INNER JOIN dept_emp AS depte ON e.emp_no=depte.emp_no
INNER JOIN departments AS dept ON dept.dept_no= depte.dept_no
WHERE dept.dept_name IN ('Sales', 'Development');

--Data Analysis Q#8 List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT e.last_name, COUNT(e.last_name) AS "Employee_Count"
FROM employees AS e
GROUP BY e.last_name
ORDER BY "Employee_Count" DESC;









