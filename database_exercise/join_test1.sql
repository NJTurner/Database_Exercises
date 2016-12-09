CREATE DATABASE IF NOT EXISTS join_test_db;
DROP DATABASE join_test_db;
USE join_test_db;

describe users;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null),
  ('lloyd', 'lloyd@example.com', 2),
  ('brad', 'brad@example.com', 2),
  ('matt', 'matt@example.com', 2),
  ('nick', 'nick@example.com', null);

SELECT * FROM users u JOIN roles r ON u.role_id = r.id;
SELECT * FROM users u JOIN roles r ON r.id = u.role_id;

SELECT * FROM users u
  RIGHT JOIN roles r ON r.id = u.role_id;

SELECT * FROM users u
  LEFT JOIN roles r ON r.id = u.role_id;

UPDATE users SET role_id = 4 WHERE role_id IS NULL;

SELECT COUNT(*) AS Count,
  r.name
FROM roles r
LEFT JOIN users u ON u.role_id = r.id
GROUP BY r.name;