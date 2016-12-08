
USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT * FROM employees WHERE first_name='Irena' OR first_name = 'Vidya' OR first_name='Maya' ORDER BY first_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M' ORDER BY first_name, last_name;

SELECT * FROM employees WHERE last_name LIKE ('E%') OR ('%E');

SELECT * FROM employees WHERE last_name LIKE ('E%') AND ('%E');

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';

SELECT * FROM employees WHERE birth_date LIKE '%12-25%';

SELECT * FROM employees WHERE birth_date LIKE '%12-25%' AND( hire_date BETWEEN '1990-01-01' AND '1999-12-31');

SELECT * FROM employees WHERE last_name LIKE '%e%';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' ;
