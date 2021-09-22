Create table sales
(
 salesid int not null primary key,
 salesname varchar(20),
 address varchar(20));
 
 insert into sales values(1,'hanu','bang');
 insert into sales values(2,'ravi','bang');
 insert into sales values(3,'giri','bang');
 
 
Create table order_sales
(
  id int primary key,
  productname varchar(20),
 address varchar(20),
salesid int,
constraint FK_order FOREIGN KEY(salesid) REFERENCES sales(salesid)

insert into sales values(1,'mobile','bang',2);
insert into sales values(2,'lap','bang',1);
insert into sales values(3,'charger','bang',3);

delete from dept where dep_id=1;

drop table dept;

update student_details set marks=100 where id='1';

select * from student_details;

alter table student_details add results varchar(10);

alter table student_details drop results;

alter table student_details modify results int;

alter table student_details modify results varchar(10);

select * from student_details;


select * from order_sales;

delete from sales where salesid=1; 

select s.salesid,s.salesname,s.address,p.id, p.productname from sales s inner join order_sales p on s.salesid=p.salesid;

select * from sales s inner join order_sales p on s.salesid=p.salesid;

select * from order_sales where salesid= (select salesid from sales where salesname= 'hanu');

select s.salesid,s.salesname,s.address,p.id, p.productname from sales s left join order_sales p on s.salesid=p.salesid;

select * from sales s left join order_sales p on s.salesid=p.salesid;

select s.salesid,s.salesname,s.address,p.id, p.productname from sales s right join order_sales p on s.salesid=p.salesid;
