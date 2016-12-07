USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
  id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist       VARCHAR(50)  NOT NULL,
  name         VARCHAR(100) NOT NULL,
  release_date YEAR,
  sales_in_millions DECIMAL(8,2) NOT NULL,
  genre        VARCHAR(50)  NOT NULL,
  PRIMARY KEY (id)
);
show tables;
describe albums;

/*Avoid naming columns date
when dealing with money use decimal type
phone numbers don't use Int, use strings*/