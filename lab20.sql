drop table if exists Departments;
drop table if exists Faculties;

create table Departments (
    d_id          integer AUTO_INCREMENT primary key,
    Department    varchar(255) unique not null);
insert into Departments values (1,"Computer Science");
insert into Departments values (2,"Electrical and Computer Engineering");
create table Faculties (
    t_id          integer AUTO_INCREMENT primary key,
    d_id           integer references Departments(id),
    name    varchar(255)  not null,
    is_chair    varchar(1)  
);