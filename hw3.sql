drop table if exists forums;
drop table if exists topics;
-- drop table if exists Faculties;

create table forums (
    f_id          integer AUTO_INCREMENT primary key,
    forum    varchar(255) unique not null,
    number_of_topics INTEGER
    );
create table topics (
    t_id          integer AUTO_INCREMENT primary key,
    f_id           INTEGER REFERENCES forum(f_id),
    topic        varchar(255)  not null,
    author        varchar(255)  not null,
    number_of_replies INTEGER,
    last_post_time      varchar(255)  not null
);

create table replies (
    r_id          integer AUTO_INCREMENT primary key,
    t_id           INTEGER REFERENCES topics(t_id),
    reply        varchar(255)  not null,
    author        varchar(255)  not null,
    last_post_time      varchar(255)  not null
);

create table users (
    u_id          integer AUTO_INCREMENT primary key,
    firstname          varchar(255) not null,
    lastname          varchar(255) not null,
    username        varchar(255)  not null,
    password        varchar(255)  not null,
    is_admin      varchar(1)  not null
);

insert into forums (forum,number_of_topics) values ("General Discussion",0);
insert into forums (forum,number_of_topics) values ("CS3220 Web Programming",2);

insert into topics (f_id,topic,author,number_of_replies,last_post_time) values (2,"Eclipse Problem","John",0,"02/20/2020 14:17");
insert into topics (f_id,topic,author,number_of_replies,last_post_time) values (2,"HW1 HELP!","Jane",0, "02/25/2020 09:01");

insert into replies (t_id,reply,author,last_post_time) values (1,"I couldn't find Dynamic Web Project when I tried to create a new project in Eclipse.","John", "02/20/2020 14:17");
insert into replies (t_id,reply,author,last_post_time) values (1,"You probably got the wrong Eclipse package. You need Eclipse for Enterprise Java Developers, not Java Developer.","Jane", "02/20/2020 14:17");

insert into users (firstname,lastname,username,password,is_admin) values("John", "Doe","jdoe1","abcd",'t');
insert into users (firstname,lastname,username,password,is_admin) values("Jane", "Doe","jdoe2","abcd",'f');