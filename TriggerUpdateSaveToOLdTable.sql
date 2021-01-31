create table Sr1
(
id int ,
name varchar(20)
)
create table Sr2
(
id int ,
name varchar(20)
)
insert into Sr1
values(1,'Sri')
insert into Sr1
values(1,'Srikanth')
update Sr1
set id=2 where name='Srikanth'

select * from Sr1
insert into Sr1
values(1,'Srikanth Reddy')

insert into Sr1
values(1,'Srikanth Reddy ch')


Create  trigger UpdateTable
on Sr1 after UPDATE
AS
begin 
Declare @oldid int
Declare @oldname varchar(20)
select @oldid= id from deleted
select @oldname=name from deleted
Insert into Sr2
values(@oldid,@oldname)
Print 'Old values Successfully stored in Sr2 table ...Please Check'
End

create table OldEmployee
( EmpId int Primary key Not null,
EmpName varchar(20),
Salary float,
City varchar(20)
)
select * from Employee

create trigger EmployeeUpdate
on Employee after update
As
Begin
Declare @Empid int
Declare @EmpName varchar(20)
Declare @Salary float
Declare @City varchar(20)
select @Empid=empid from deleted
select @EmpName=empName from deleted
select @Salary=salary from deleted
select @City=city from deleted
Insert into OldEmployee values(@Empid,@EmpName, @Salary,@City)
end;

select * from Employee
select * from OldEmployee
truncate table OldEmployee
update Employee set EmpName= where EmpId





