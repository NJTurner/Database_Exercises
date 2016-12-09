use employees;

select
  first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
);

select
  first_name, last_name, birth_date
FROM employees e JOIN dept_manager dm ON dm.emp_no = e.emp_no;

/* exercise */

SELECT * from employees WHERE hire_date IN(
  SELECT hire_date FROM employees WHERE emp_no= 101010
);

SELECT
  first_name, last_name, title
FROM employees e JOIN titles t ON e.first_name = 'Aamod';

select
  first_name, last_name, gender
FROM employees e JOIN dept_manager dm ON dm.emp_no = e.emp_no AND e.gender = 'F';

select
  first_name, last_name, gender, dept_name
FROM employees e JOIN departments d JOIN dept_manager dm ON dm.emp_no = e.emp_no AND d.dept_no = e.emp_no AND e.gender = 'F';