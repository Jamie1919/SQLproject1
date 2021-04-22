CREATE TABLE Employees(
emp_id bigserial,
first_name varchar(20),
last_name varchar(20),
gender varchar(1),
address varchar(50),
email varchar(50),
depart_id integer references departments(depart_id),
role_id integer references roles(role_id),
salary_id integer references salaries(salary_id),
overtime_id integer references overtimes(overtime_id),
CONSTRAINT emp_key PRIMARY KEY (emp_id)
 );
 
select * from employees;
drop table employees;

SELECT emp.first_name, emp.last_name, dp.depart_name
FROM employees AS emp LEFT JOIN departments AS dp
	ON emp.depart_id = dp.depart_id
LEFT JOIN roles AS ro
	ON ro.role_id = ro.role_id
LEFT JOIN salaries AS sa
    ON sa.salary_id = sa.salary_id
LEFT JOIN overtimes AS ov
    ON ov.overtime_id = ov.overtime_id;
	
SELECT employees.emp_id, 
employees.first_name, 
employees.last_name, 
employees.address, 
employees.email, 
overtimes.overtime_pa, 
departments.depart_name,  
roles.role_name, 
salaries.salary_pa
FROM employees INNER JOIN departments ON employees.depart_id = departments.depart_id
INNER JOIN roles ON employees.role_id = roles.role_id
INNER JOIN overtimes ON employees.emp_id = overtimes.overtime_id
INNER JOIN salaries ON employees.salary_id = salaries.salary_id;

drop table employees

CREATE TABLE Departments(
depart_id bigserial CONSTRAINT depart_key PRIMARY KEY,
depart_name varchar(20)
depart_city varchar(20)
);

DROP TABLE Departments;

CREATE TABLE Roles(
role_id bigserial CONSTRAINT role_key PRIMARY KEY,
role_name varchar(40)
);

DROP TABLE Roles;

CREATE TABLE Salaries(
salary_id bigserial CONSTRAINT salary_key PRIMARY KEY,
salary_pa numeric(8,2)
);

DROP TABLE Salaries;

CREATE TABLE Overtimes(
overtime_id bigserial CONSTRAINT overtime_key PRIMARY KEY,
overtime_pa integer
);

DROP TABLE Overtimes;

INSERT INTO Employees(first_name,last_name,gender,address,email,depart_id,role_id,salary_id, overtime_id)
VALUES('Alex','Lion','M','Seel St Liverpool','alex126@gmail.com', 2, 3, 4, 6),
('Ayush','Mahadik','M','Bold St Liverpool','ayushm68@gmail.com', 1, 5, 8, 2),
('Madison','Swanapoel','F','Bold St Liverpool','madiswan5@gmail.com', 3, 4, 10, 4),
('Connor','Price','M','Bold St Liverpool','ronic19@gmail.com', 4, 6, 1, 3),
('Jamie','Price','M','Bold St Liverpool','japrice88@gmail.com',10, 1, 3, 5),
('Caleb','Kasonde','M','Seel St Liverpool','casonde09@gmail.com',7, 2, 9, 1),
('Michael','Harriman','M',' Bold St Liverpool','miharri42@gmail.com',6, 10, 2, 9),
('Shaun','Isaacs','M','Parr St Liverpool','sisaac18@gmail.com',9, 8, 5, 7),
('Karl','Palai','M','Parr St Liverpool','kpalai34@gmail.com',5, 7, 6, 8),
('Ava','Downey','F','Bold St Liverpool','adowney66@gmail.com',4, 9, 7, 10);

SELECT * FROM Employees;




INSERT INTO Departments(depart_name,depart_city)
VALUES('IT','Liverpool'),
	('Business coordination'),
	('Marketing'),
	('Administration'),
	('Finance'),
	('Operations'),
	('Production'),
	('Field support'),
	('President'),
	('Human resources');

SELECT * FROM Departments;

INSERT INTO Roles(role_name)
VALUES('IT Project Manager'),
      ('IT Project Manager'),
	  ('Help desk support'),
	  ('Network admin'),
	  ('Business analyst '),
	  ('Business analyst '),
	  ('Hardware technician'),
	  ('Head programmer'),
	  ('IT Diirector'),
	  ('Systems Engineering');

SELECT * FROM Roles;

INSERT INTO Salaries(salary_pa)
VALUES(100000),
      (100000),
	  (40000),
	  (120000),
	  (80000),
	  (80000),
	  (75000),
	  (82000),
	  (150000),
	  (70000);

SELECT * FROM Salaries;

INSERT INTO Overtimes(overtime_pa)
VALUES(1),
      (2),
      (3),
      (4),
      (5),
      (6),
      (7),
      (8),
      (9),
     (10);


SELECT * FROM Overtimes;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM roles;
SELECT * FROM salaries;

