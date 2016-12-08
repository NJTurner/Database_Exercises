USE employees;
/*function notes*/

SELECT COUNT(*)
FROM employees;

SELECT concat(first_name, ' ', last_name)
FROM employees;

SELECT now(), curdate(), curtime(), UNIX_TIMESTAMP();

SELECT CONCAT(
    'Teaching people to code for ',
    UNIX_TIMESTAMP()- UNIX_TIMESTAMP('2016-12-08'),
    ' seconds'
);

SELECT first_name, last_name,
  (unix_timestamp() - unix_timestamp(hire_date)) / (60 * 60 * 24 * 365)
FROM employees;

SELECT count(*) FROM employees WHERE gender = 'M';
SELECT count(*) FROM employees WHERE gender = 'F';

SELECT count(*) AS 'Count of Genders', gender AS 'Gen' FROM employees GROUP BY gender;

SELECT COUNT(first_name), first_name,last_name
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name, last_name
ORDER BY count(first_name) DESC;

SELECT * FROM employees WHERE first_name = 'Yonghong' and last_name = 'Codenie';

SELECT DISTINCT first_name from employees WHERE first_name NOT LIKE '%a%';

SELECT AVG(salary) FROM salaries;

SELECT * FROM salaries;

select AVG(salary) FROM salaries GROUP BY emp_no;



/*EXERCISE*/


SELECT count(*),gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;

SELECT concat(first_name, ' ', last_name ) FROM employees WHERE last_name LIKE ('E%') OR ('%E') ORDER BY emp_no DESC;

SELECT *, datediff(now(), hire_date) from employees WHERE birth_date LIKE '%12-25%' AND(hire_date BETWEEN '1990-01-01' AND '1999-12-31') ORDER BY birth_date, hire_date DESC;

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' ;
