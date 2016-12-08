use employees;

SELECT DISTINCT title
FROM titles;

/*same response, but in alphabetical order*/
SELECT DISTINCT title
FROM titles
GROUP BY title;