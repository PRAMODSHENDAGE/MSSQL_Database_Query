create database payroll_service

select db_name()

select * from sys.databases

use payroll_service

create table employee_service
(
Id int identity(1,1) primary key,
name varchar(60) not null,
salary money not null,
start_date date not null,
)

insert into employee_service values
('Mukesh',10000.0,'2018-01-13'),
('Bili',12000.0,'2016-08-26'),
('Terisa',25500.0,'2019-07-17'),
('Charlie',26000.0,'2022-05-30')

select * from employee_service

select salary from employee_service where name='bili'

select getdate()

select * from employee_service where start_date between
'2018-01-01' and getdate();


alter table employee_service add gender char(1)

update employee_service set gender='M'
where name in ('mukesh','Charlie') 

update employee_service set gender='F'
where name in ('bili','terisa') 

select * from employee_service

select avg(salary) from employee_service where gender='M'

select avg(salary) from employee_service where gender='F'

select min(salary) from employee_service where gender='M'

select min(salary) from employee_service where gender='F'

select max(salary) from employee_service where gender='M' 

select max(salary) from employee_service where gender='F'

select sum(salary),gender from employee_service group by gender

select sum(salary),gender,name from employee_service group by gender,name



alter table employee_service add phone varchar(14), address varchar(100), department varchar(20) not null default 'CS'

alter table employee_service add constraint
DefaultConstraint default 'India' for address 

update employee_service set department='Sales' where name='terisa'

insert into employee_service values
('Terisa',25500.0,'2019-07-17','F',Null,Null,'Marketing','25500', 0,0,0,0)

select * from employee_service

alter table employee_service add Basic_Pay money, Deduction money, Taxable_Pay money, Income_Tax money, Net_Pay money 

update employee_service set Basic_Pay='10000' where name='Mukesh'

update employee_service set Basic_Pay='12000' where name='Bili'

update employee_service set Basic_Pay='25500' where name='terisa'

update employee_service set Basic_Pay='26000' where name='charlie'

update employee_service set Deduction=0 where name in ('mukesh', 'bili', 'terisa', 'charlie')

update employee_service set Taxable_Pay=0 where name in ('mukesh', 'bili', 'terisa', 'charlie')

update employee_service set Income_Tax=0 where name in ('mukesh', 'bili', 'terisa', 'charlie')

update employee_service set Net_Pay=0 where name in ('mukesh', 'bili', 'terisa', 'charlie')

delete from employee_service where Id='8'