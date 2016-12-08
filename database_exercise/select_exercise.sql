USE codeup_test_db;

SELECT name AS "All albums by Pink Floyd"
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date AS "The year Sgt. Pepper's Lonely Hearts Club Band was released"
FROM albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre AS "The genre for Nevermind"
FROM albums
WHERE name = 'Nevermind';

SELECT
  release_date,
  name AS "All albums released in the 90's"
FROM albums
WHERE release_date BETWEEN 1990 AND 1999;

SELECT
  sales_in_millions,
  name AS "All albums which had less than 20 million certified sales"
FROM albums
WHERE sales_in_millions < '20.00';

SELECT name AS "All albums in the Rock genre"
FROM albums
WHERE genre = 'Rock';
SELECT name AS "All albums in every Rock genre"
FROM albums
WHERE genre LIKE '%Rock%';