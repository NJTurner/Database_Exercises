USE employees;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 25;

SELECT
  e.emp_no AS 'ID from Employees Table',
  s.emp_no AS 'ID from Salaries Table'
FROM employees AS e, salaries AS s
WHERE e.first_name LIKE '%qu%';

SELECT
  employees.emp_no AS 'ID from Employees Table',
  salaries.emp_no AS 'Emp_No from Salaries Table', gender
FROM employees, salaries
WHERE employees.first_name
      LIKE '%qu%';

select employees.emp_no FROM employees;

describe employees;


/*exercise*/
SELECT
  CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name,
  birth_date AS 'DOB'
FROM employees
LIMIT 10;