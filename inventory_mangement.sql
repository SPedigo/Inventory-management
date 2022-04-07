select sum(Profit) from master_inventory;
insert into girls_inventory values ('Girls', 'Disney', '6', 'Sweatshirt', 3, 'Red', 'Yellow', 0, 'NA', 0);
insert into girls_inventory values ('Girls', 'Weissman', 'LC', 'Dance_costume', 3, 'Purple', 'White', 0, 'NA', 0);
insert into girls_inventory values ('Girls', 'Weissman', 'AS', 'Dance_costume', 3, 'Coral', 'White', 1, 'Facebook', 27);
update boys_inventory set Sold = 1 where Brand = 'Nike' and size = 'XL';
insert into mens_inventory values ('Men', 'J_Crew', '32', 'Chinos', 0, 'Grey', 'None', 1, 'Facebook', 10);
insert into mens_inventory values ('Men', 'J_Crew', '32', 'Chinos', 0, 'Orange', 'None', 'NA', 0);
insert into girls_inventory values ('Girls', 'Weissman', 'LC', 'Dance_costume', 3, 'Purple', 'Black', 0, 'NA', 0);
select * from master_inventory;
create table facebook (
select * from master_inventory where Platform = 'Facebook'
);
create table Poshmark (
select * from master_inventory where Platform = 'Poshmark'
);
alter table master_inventory 
ADD COLUMN ID INT auto_increment primary key first;
create table sales (
ID INT,
customer_name varchar(50),
customer_state varchar(2),
type varchar(35),
brand varchar(35),
sale_amount int, 
foreign key(ID) references master_inventory(ID)
);
create table sold (
(select * from master_inventory where Sold = 1)
);
select * from sold;
insert into sales values (4, 'Diana Jones', 'UT', 'Shoes', 'Adidas', 12);
insert into sales values (7, 'Cindy Maxie', 'CO', 'Running_shorts', 'Nike', 4);
insert into sales values (10, 'Victor Huego', 'CA', 'Skirt', 'Bloch', 3);
insert into sales values (13, 'Stacy Proctor', 'MI', 'Shorts', 'Nike', 3);