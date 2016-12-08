USE codeup_test_db;

SELECT name FROM albums;

UPDATE albums
SET sales_in_millions = (sales_in_millions * 100);

SELECT name, sales_in_millions from albums;

SELECT release_date, artist, name FROM albums WHERE release_date < 1980;

UPDATE albums
SET release_date = 1800
where release_date < 1980;

SELECT release_date, artist, name from albums WHERE release_date < 1900;

SELECT artist, name FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = "Peter Jackson"
WHERE artist = "Michael Jackson";

SELECT artist, name FROM albums WHERE artist = 'Peter Jackson';


