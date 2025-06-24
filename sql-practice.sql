insert into users (username, firstName, lastName, age) values ('jdoe', 'John', 'Doe', 35);
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
 
 select * from users;
 SET SQL_SAFE_UPDATES = 0;
 update users set firstName = 'Jane', lastName = 'Doe' where username = 'jdoe';
 delete from users where username = 'jdoe';
 select concat(firstName, ' ', lastName) as fullName from users;
 select firstName, lastName from users where lastName = 'Doe';
 select * from users order by lastName asc, firstName asc;
 select * from users order by lastName asc limit 10 offset 20;
