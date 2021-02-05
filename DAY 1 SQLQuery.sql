--DEFAULT CONSTRAINTS(Lots of problem on this topic)
create table tblStudent1
(sid int primary key,
sname varchar (29),
genderId varchar (20)
)





alter table tblstudent1
add constraint df_tblstudent1_gender
default 'UN' for genderId

insert into tblStudent1 values (1,'Altaf')
--Column name or number of supplied values does not match table definition.

--CHECK CONSTRAINTS

create table testStudent
(id int primary key,
 sname varchar (30),
 age int
 )

alter table teststudent
add constraint ck_teststudent_age check (age>18 and age<30)

insert into testStudent values (2,'B',27)

--IDENTITY COLUMN