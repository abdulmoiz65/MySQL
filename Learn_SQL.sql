create database college;
use college;

create table student(
rollno int primary key,
name varchar(50),
marks int Not Null,
grade varchar(1),
city varchar(20)
);

insert into student 
values
(101,"babar",89,"A","islamabad"),
(102,"rizwan",75,"C","multan"),
(103,"fakhar",93,"A","peshawar"),
(104,"shaheen",12,"F","islamabad"),
(105,"haris",63,"B","lahore"),
(106,"naseem",75,"C","islamabad")
;
select * from student;
select rollno,name,grade  from student;

select distinct grade from student;

select * from student where marks > 80;
select * from student where grade = "a";

select * from student 
where name = "babar";

select marks from student where marks < 80;

select * from student where marks > 80 and city ="peshawar";
select * from student where name like "%r" ;
select * from student where name = "moiz" or grade =  "b"; 
select * from student where marks between 60 and 80;
select * from student where city in ("islamabad");
select * from student where name in ("babar");
select * from student where name not in ("babar","rizwan");

select * from student limit 3 ;
select marks from student limit 2; 
select marks ,name from student limit 2; 

select * from student order by name asc;
select * from student order by name desc;
select name , marks , rollno from student order by marks desc;

select count(name) from student ;
select count(marks) from student;
select max(marks) from student;
select max(name) from student;
select min(name) from student;
select min(marks) from student;
select sum(rollno) from student;
select sum(name) from student;
select avg(marks) from student;
select avg(rollno) from student;

select city from student group by city;
select city, count(rollno)from student group by city;
select city, count(name) from student group by city;
select city , max(marks) from student group by city;
select city , count(grade) from student group by city;
select grade ,count(city) from student group by grade;
select grade , city ,count(city) from student group by grade, city;
select city ,avg(marks) from student group by city;
select grade, count(grade) from student group by grade;
select city , count(name)from student group by city;
select *from student;

select city,name,count(name) from student group by city,name having max(marks)>90; 
select city,name,count(name) from student group by city,name having max(marks)<90;
select city,count(rollno) from student group by city having max(marks)>75;
select name,city,count(city) from student group by name,city having name like "%b%";

select city 
from student 
where grade = "A" 
group by city 
having max(marks)>=80 
order by city desc;

select city from student where grade = "A" group by city having max(marks)>=80 order by city desc;
select name,marks from student where marks >50 order by marks desc;
select marks ,count(marks) from student group by marks order by count(marks) desc; 

-- command for off the safe mode 
set sql_safe_updates=0;

update student set grade ="B" where marks between 70 and 80 ;
update student set grade ="c" where marks between 60 and 70 ;
update student set marks =50 where grade ="f";
update student set grade="D" where marks between 50 and 60;
update student set marks = marks+1 ;

delete from student where grade="d";

select * from student;


-- practice Qs 
select city, avg(marks) from student  group by city order by city asc;

-- Table for practice
create table payments(
customer_id int primary key,
customer_name varchar(50),
mode varchar(50),
city varchar(50)
);
insert into payments
values
(101,"Moiz","debit card","lahore"),
(102,"Waqas","credit card","karachi"),
(103,"Ali","netBanking","muree"),
(104,"kashif","credit card","rawalpindi"),
(105,"Ali","debit card","karachi"),
(106,"Kamran","netBanking","multan"),
(107,"Muhammad","credit card","islamabad"),
(108,"Faiz","debit card","muree"),
(109,"Noman","netBanking","peshawar"),
(110,"Abdullah","credit card","muree")
;
select * from payments;
-- find the total payment according to the each payment method
select mode ,count(mode) from payments group by  mode;
select mode ,count(mode) from payments group by  mode having max(count);

SELECT CITY FROM PAYMENTS WHERE CITY LIKE "%A%" order by CITY ASC;


-- practice
show tables;
