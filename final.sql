drop table if exists shoppinglist;

create table shoppinglist (
    s_id          integer AUTO_INCREMENT primary key,
    item    varchar(255)  ,
    store    varchar(255) 
    );

insert into shoppinglist (item,store) values ("Bottled Water","Costco");
insert into shoppinglist (item,store) values ("Milk","Costco");
insert into shoppinglist (item,store) values ("Potato","Super King");