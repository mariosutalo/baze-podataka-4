create database employees_register;

use employees_register;

create table department(
id int auto_increment primary key,
name varchar(100)
);

create table employee (
id int auto_increment primary key,
first_name varchar(100),
last_name varchar(100),
salary decimal(7,2),
department_id int,
foreign key (department_id) references department(id)
);

insert into department (name)
values ("Marketing"),
	   ("Production"),
       ("SaLes");

insert into employee (first_name, last_name, salary, department_id)
values ("Mario", "Šutalo", 1300.00, 2),
	   ("Lucija", "Boras", 920.00, 1),
       ("Ivano", "Galić", 1150, 2),
       ("Emil", "Fak", 900, 4)