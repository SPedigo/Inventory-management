select sum(Profit) from master_inventory;
insert into girls_inventory values ('Girls', 'Disney', '6', 'Sweatshirt', 3, 'Red', 'Yellow', 0, 'NA', 0);
insert into girls_inventory values ('Girls', 'Weissman', 'LC', 'Dance_costume', 3, 'Purple', 'White', 0, 'NA', 0);
insert into girls_inventory values ('Girls', 'Weissman', 'AS', 'Dance_costume', 3, 'Coral', 'White', 1, 'Facebook', 27);
update boys_inventory set Sold = 1 where Brand = 'Nike' and size = 'XL';
insert into mens_inventory values ('Men', 'J_Crew', '32', 'Chinos', 0, 'Grey', 'None', 1, 'Facebook', 10);
insert into mens_inventory values ('Men', 'J_Crew', '32', 'Chinos', 0, 'Orange', 'None', 'NA', 0);
insert into girls_inventory values ('Girls', 'Weissman', 'LC', 'Dance_costume', 3, 'Purple', 'Black', 0, 'NA', 0);
select * from master_inventory;