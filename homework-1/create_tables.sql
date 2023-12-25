-- SQL-команды для создания таблиц
CREATE TABLE employees
(
	empoyee_id int PRIMARY KEY,
	first_name varchar(10),
	last_nume varchar(10),
	title varchar (25),
	birth_date date,
	notes text
);

CREATE TABLE customers
(
	customer_id char(5) PRIMARY KEY,
	company_name varchar(50),
	contact_name varchar(20)
);

CREATE TABLE order_data
(
	order_id int PRIMARY KEY,
	customer_id char(5) REFERENCES customers(customer_id) NOT NULL,
	empoyee_id int REFERENCES employees(empoyee_id)NOT NULL,
	order_data date,
	ship_city varchar(24)
);

SELECT * FROM employees
SELECT * FROM customers
SELECT * FROM order_data
