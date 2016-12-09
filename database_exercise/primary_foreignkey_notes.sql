USE codeup_test_db;

CREATE TABLE quotes (
  id      INT          NOT NULL AUTO_INCREMENT,
  author  VARCHAR(50)  NOT NULL,
  content VARCHAR(240) NOT NULL,
  PRIMARY KEY (id)
);
SHOW TABLES;
DESCRIBE quotes;

ALTER TABLE quotes
  ADD UNIQUE (content);

USE employees;
SELECT
  from_date,
  to_date
FROM dept_emp;

USE codeup_test_db;
/*# One to Many

one  -< many
many >- one
user -< posts
post >- user

with 1-to-many, the "many" table has the foreign key referencing the "one"
with 1 user to many posts, the posts table has the foreign key user_id referencing id on users

# Many to Many

Many to Many relationship
One post has many tags
One tag has many posts

users >--< roles (admin, author, editor)
posts >--< tags
*/

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(256) NOT NULL,
  password VARCHAR(256) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE tags (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  tag_name VARCHAR(256) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  body VARCHAR(256) NOT NULL,
  user_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE post_tag (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  post_id INT UNSIGNED DEFAULT NULL,
  tag_id INT UNSIGNED DEFAULT NULL,
  FOREIGN KEY (post_id) REFERENCES posts (id),
  FOREIGN KEY (tag_id) REFERENCES tags (id),
  PRIMARY KEY (id)
);

CREATE TABLE messages (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  message VARCHAR(256) NOT NULL,
  recipient_id INT UNSIGNED DEFAULT NULL,
  sender_id INT UNSIGNED DEFAULT NULL,
  FOREIGN KEY (recipient_id) REFERENCES users (id),
  FOREIGN KEY (sender_id) REFERENCES users (id),
  PRIMARY KEY (id)
);
/*

users>--<roles (admin, author, editor)
bob -< admin, editor
sally -< admin
jane -< admin
admin -> bob, sally, jane
editor -> bob
*/