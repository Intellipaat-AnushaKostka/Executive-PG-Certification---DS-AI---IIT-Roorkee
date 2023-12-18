

-- Project 3

-- Problem Statement: How to convert a relational design into tables in SQL Server


-- Table 1 - User Role

CREATE TABLE role(
  id INT PRIMARY KEY,
  role_name VARCHAR(100)
);


-- Table 2 - user_has_role

CREATE TABLE user_has_role(
  id INT PRIMARY KEY,
  role_start_time DATETIME,
  role_end_time DATETIME,
  user_account_id INT FOREIGN KEY(user_account_id) REFERENCES user_has_role(id),
  role_id INT FOREIGN KEY (role_id) REFERENCES user_has_role(id)
  );

-- Table 3 - user account

CREATE TABLE user_account(
  id INT PRIMARY KEY,
  username VARCHAR(100),
  email	VARCHAR(254),
  password VARCHAR(200),
  password_salt VARCHAR(50),
  password_hash_algorithm VARCHAR(50));

 
 -- Table 4 - statu

 CREATE TABLE status(
  id INT PRIMARY KEY,
  status_name VARCHAR(100),
  is_user_working BIT
);


-- Table 5 - user_has_status

CREATE TABLE user_has_status(
  id INT PRIMARY KEY,
  status_start_time DATETIME,
  status_end_time DATETIME,
  user_account_id INT FOREIGN KEY(user_account_id) REFERENCES user_has_role(id),
  status_id INT FOREIGN KEY (status_id) REFERENCES user_has_role(id)
  );


  /* 1. Insert data into each of the above tables. With at least two rows in each of the table, make sure,
  that you have created respective foreign keys. */

  -- Insert data into 'role' table

INSERT INTO role (id, role_name) VALUES
(1, 'Admin'),
(2, 'User');

select * from role;

-- Insert data into 'user_has_role' table

INSERT INTO user_has_role (id, role_start_time, role_end_time, user_account_id, role_id) VALUES
(1, '2023-01-01 00:00:00', '2023-01-31 23:59:59', 1, 1),
(2, '2023-02-01 00:00:00', '2023-02-28 23:59:59', 2, 2);

select * from user_has_role;

-- Insert data into 'user_account' table

INSERT INTO user_account (id, username, email, password, password_salt, password_hash_algorithm) VALUES
(1, 'admin_user', 'admin@example.com', 'admin_password_hash', 'admin_salt', 'SHA256'),
(2, 'regular_user', 'user@example.com', 'user_password_hash', 'user_salt', 'SHA256');

select * from user_account;

-- Insert data into 'status' table

INSERT INTO status (id, status_name, is_user_working) VALUES
(1, 'Active', 1),
(2, 'Inactive', 0);

select * from status;

-- Insert data into 'user_has_status' table

INSERT INTO user_has_status (id, status_start_time, status_end_time, user_account_id, status_id) VALUES
(1, '2023-01-01 00:00:00', '2023-01-31 23:59:59', 1, 1),
(2, '2023-02-01 00:00:00', '2023-02-28 23:59:59', 2, 2);

select * from user_has_status;

-- 2.	Delete all the data from each of the tables.

-- Delete all data from 'role' table

DELETE FROM role;

-- Delete all data from 'user_has_role' table

DELETE FROM user_has_role;

-- Delete all data from 'user_account' table

DELETE FROM user_account;

-- Delete all data from 'status' table

DELETE FROM status;

-- Delete all data from 'user_has_status' table

DELETE FROM user_has_status;

-- Truncate all tables
TRUNCATE TABLE role;
TRUNCATE TABLE user_has_role;
TRUNCATE TABLE user_account;
TRUNCATE TABLE status;
TRUNCATE TABLE user_has_status;