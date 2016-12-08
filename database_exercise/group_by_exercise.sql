use employees;

SELECT DISTINCT title
FROM titles;

/*same response, but in alphabetical order*/
SELECT DISTINCT title
FROM titles
GROUP BY title;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%' and last_name LIKE '%E'
GROUP BY last_name;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' and last_name LIKE '%E';

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';