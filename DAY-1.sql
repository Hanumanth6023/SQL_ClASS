
create database demo;
use demo;

create table student_details(
id int not null primary key,
name varchar(20),
marks int );

create table dept(
id int primary key,
deptname varchar(20),
address varchar(20) );

select * from student_details;

insert into student_details values(1,'Hanu',100);

insert into student_details values(2,'bhanu',90);

insert into student_details values(3,'shannu',70);

select * from student_details where marks >70 and marks <90;

select * from student_details where marks >70 or marks <90;

select * from student_details where name= 'hanu';

select id as student_roll_number from student_details;

select * from student_details order by id asc;

select * from student_details order by id desc;

select * from student_details where id>2 order by id desc;

select count(*) from student_details;

select count(*) as total from student_details;

select distinct id from student_details;

select * from dept;
select * from dept d, student_details s  where s.dept_id =2;

select s.* from dept d, student_details s where s.marks >50 and d.dep_name= 'cse' and s.dep_id=d.dep_id;

select dep_id from dept where dep_name= 'ece';

select id from dept;

select name from dept;

select * from dept where id=2;

select * from dept where name='hanu';