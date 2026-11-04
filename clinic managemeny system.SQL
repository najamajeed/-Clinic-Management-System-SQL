create DATABASE clinic;
use clinic;
create table patients (
patient_id int primary key,
patient_name varchar (50) not null,
age int not null,
gender varchar (10),
phone_no varchar (12) not null);
select* from patients;
insert into patients (patient_id,patient_name,age,gender,phone_no)
values (1,'femina',25,'female','2348765902'),
(2,'soya',30,'female','9034865824'),
(3,'nihala',45,'female','2386709856'),
(4,'akhil',40,'male','3476895469'),
(5,'nikil',35,'male','4872098736');
create table departments (
department_id int primary key,
department_name varchar (50) not null );
select * from departments;
insert into departments (department_id,department_name)
values (1,'general medicine'),
(2,'cardiology'),
(3,'orthopedics'),
(4,'pediatrics'),
(5,'dermatology');
create table doctors (
doctor_id int primary key,
doctor_name varchar (50) not null,
specialization varchar (50) not null,
department_id int not null,
foreign key (department_id) references departments (department_id));
insert into doctors (doctor_id,doctor_name,specialization,department_id)
values (1,'Dr.Arun Kumar','general_medicine',1),
(2,'Dr.Meera Nair','cardiology',2),
(3,'Dr.Rahul Das','orthopedics',3),
(4,'Dr.Anjali Menon','pediatrics',4),
(5,'Dr.Vivek Raj','dermatology',5);
select * from doctors;
create table appointments (
appointment_id int primary key,
patient_id int,
doctor_id int,
appointment_date date,
status varchar (20),
foreign key (patient_id ) references patients (patient_id),
foreign key (doctor_id) references doctors (doctor_id));
insert into appointments (appointment_id,patient_id,doctor_id,appointment_date,status)
values (001,1,1,'2026-02-20','completed'),
(002,2,2,'2026-05-30','completed'),
(003,3,3,'2026-10-18','scheduled'),
(004,4,4,'2026-05-06','completed'),
(005,5,5,'2026-12-01','scheduled');
select* from appointments;
CREATE TABLE bills (
bill_id INT PRIMARY KEY,
appointment_id INT,
total_amount DECIMAL(10,2),
payment_status VARCHAR(20),
FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id));
insert into  bills (bill_id, appointment_id, total_amount, payment_status)
values (1, 001, 700.00, 'Paid'),
(2, 002, 500.00, 'Paid'),
(3, 003, 600.00, 'Pending'),
(4, 004, 800.00, 'Paid'),
(5, 005, 450.00, 'Pending');
select * from bills;
















