-- Inserting a single user
insert into users (username, firstName, lastName, age) values ('jdoe', 'John', 'Doe', 35);

-- Inserting multiple users at once
insert into users (username, firstName, lastName, age)
values
 ('asmith', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);

-- Verify all data inserted into the "users" table
 select * from users;

-- Temporarily disable safe updates to allow updates without a WHERE clause involving a key column
 SET SQL_SAFE_UPDATES = 0;

-- Update the first and last name of the user with username 'jdoe'
 update users set firstName = 'Jane', lastName = 'Doe' where username = 'jdoe';

-- Delete the user with username 'jdoe'
 delete from users where username = 'jdoe';

-- Retrieve the full name (first name + last name) of all users
 select concat(firstName, ' ', lastName) as fullName from users;

-- Retrieve first and last names of users with last name 'Doe'
 select firstName, lastName from users where lastName = 'Doe';

-- Retrieve all users sorted by last name in ascending order and first name in ascending order
 select * from users order by lastName asc, firstName asc;

-- Retrieve users sorted by last name in ascending order, limiting to 10 results and offset by 20
 select * from users order by lastName asc limit 10 offset 20;
