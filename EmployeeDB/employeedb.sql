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
	
SELECT emp.first_name, emp.last_name, dp.depart_name, dp.depart_city
FROM employees AS emp LEFT JOIN departments AS dp
	ON emp.depart_id = dp.depart_id
LEFT JOIN roles AS ro
	ON ro.role_id = ro.role_id
LEFT JOIN salaries AS sa
    ON sa.salary_id = sa.salary_id
LEFT JOIN overtimes AS ov
    ON ov.overtime_id = ov.overtime_id;
	
drop table employees

CREATE TABLE Departments(
depart_id bigserial CONSTRAINT depart_key PRIMARY KEY,
depart_name varchar(20),
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

INSERT INTO Employees(first_name,last_name,gender,address,email)
VALUES('Alex','Lion','M','Seel St Liverpool','alex126@gmail.com'),
('Ayush','Mahadik','M','Bold St Liverpool','ayushm68@gmail.com'),
('Madison','Swanapoel','F','Bold St Liverpool','madiswan5@gmail.com'),
('Connor','Price','M','Bold St Liverpool','ronic19@gmail.com'),
('Jamie','Price','M','Bold St Liverpool','japrice88@gmail.com'),
('Caleb','Kasonde','M','Seel St Liverpool','casonde09@gmail.com'),
('Michael','Harriman','M',' Bold St Liverpool','miharri42@gmail.com'),
('Shaun','Isaacs','M','Parr St Liverpool','sisaac18@gmail.com'),
('Karl','Palai','M','Parr St Liverpool','kpalai34@gmail.com'),
('Ava','Downey','F','Bold St Liverpool','adowney66@gmail.com');
SELECT * FROM Employees;




INSERT INTO Departments(depart_name,depart_city)
VALUES('IT','Liverpool')

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

