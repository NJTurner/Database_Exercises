USE employees;

show tables;

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'f'
ORDER BY dept_name;

SELECT t.title as 'Title', COUNT(*) AS 'Count'
FROM employees as e
  JOIN titles as t
    ON t.emp_no = e.emp_no
  JOIN dept_emp as de
  on de.emp_no = e.emp_no
WHERE t.to_date = '9999-01-01'AND de.to_date = '9999-01-01'AND dept_no = 'd009'
GROUP BY title;

SELECT d.dept_name as 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary as 'Salary'
FROM employees as e
  JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = dm.dept_no
  JOIN salaries as s
  ON s.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY dept_name;