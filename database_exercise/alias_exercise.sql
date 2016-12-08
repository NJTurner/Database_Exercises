USE employees;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 25;

SELECT
  e.emp_no AS 'ID from Employees Table',
  s.emp_no AS 'ID from Salaries Table'
FROM employees AS e, salaries AS s
WHERE e.first_name LIKE '%qu%';


/*exercise*/
SELECT
  CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name,
  birth_date                                         AS 'DOB'
FROM employees
LIMIT 10;