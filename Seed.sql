INSERT into LOCATIONS (name) values ('HeadOffice');
INSERT into LOCATIONS (name) values ('Auckland');
INSERT into LOCATIONS (name) values ('Christchurch');
INSERT into LOCATIONS (name) values ('Wellington');
INSERT into LOCATIONS (name) values ('Queenstown');

insert into users (name, Birthday) values ('Wesley','01-15-1990');
insert into users (name, Birthday) values ('Bobby','07-25-2001');
insert into users (name, Birthday) values ('William','05-12-1997');
insert into users (name, Birthday) values ('Chris','09-30-2005');
insert into users (name, Birthday) values ('Nigel','11-05-2007');

insert into Roles (name, Description) values ('Owner','He who holds all the keys');
insert into Roles (name, Description) values ('CleaningStaff','He who holds some of the keys');
insert into Roles (name, Description) values ('Patron','He who holds Beer probably');
insert into Roles (name, Description) values ('BarStaff','He who holds some of the keys and serves Beer');
insert into Roles (name, Description) values ('Customer','He who buys things');

Insert into UserRoles (UserID, RoleID) values (1,1);
Insert into UserRoles (UserID, RoleID) values (2,5);
Insert into UserRoles (UserID, RoleID) values (3,3);
Insert into UserRoles (UserID, RoleID) values (4,1);
Insert into UserRoles (UserID, RoleID) values (5,4);

insert into Taverns (Name, floors, ownerid, locationid) values ('The Greatest Tavern in the World', 2, 1, 1 );
insert into Taverns (Name, floors, ownerid, locationid) values ('The Smallest Tavern in the World', 1, 4, 5);
insert into Taverns (Name, floors, ownerid, locationid) values ('Travis Tavern', 3, 1, 3);

Insert into Supplies (Name, Unit, Cost) values ('Strong Ale', 'Ounce', 2.50);
Insert into Supplies (Name, Unit, Cost) values ('Strong Bass', 'Drop', 5);
Insert into Supplies (Name, Unit, Cost) values ('Liquid Nitrogen', 'Balloon', 3);

insert into Inventory (TavernID, SupplyID, Quantity, DateReceived) values (1, 1, 50, '01-15-2021');
insert into Inventory (TavernID, SupplyID, Quantity, DateReceived) values (2, 2, 5, '07-07-2020');
insert into Inventory (TavernID, SupplyID, Quantity, DateReceived) values (1, 3, 10, '09-09-2020');

INSERT into Services (name) values ('Pool');
INSERT into Services (name) values ('Weapon Sharpening');
INSERT into Services (name) values ('Singing BabyShark');
INSERT into Services (name) values ('Luggage Teleportation');
INSERT into Services (name) values ('Shoe Polishing');

INSERT into Status (name) values ('Active');
INSERT into Status (name) values ('Inactive');
INSERT into Status (name) values ('OutOfStock');

INSERT into TavernServices (TavernID, ServiceID, StatusID) values (1, 3, 1);
INSERT into TavernServices (TavernID, ServiceID, StatusID) values (1, 1, 1);
INSERT into TavernServices (TavernID, ServiceID, StatusID) values (2, 4, 1);
INSERT into TavernServices (TavernID, ServiceID, StatusID) values (2, 1, 1);

INSERT into ServiceSales (ServiceID, UsersID, Price, DatePurchased, TavernID) values (1, 1, 10, '02-02-2020', 1);
INSERT into ServiceSales (ServiceID, UsersID, Price, DatePurchased, TavernID) values (2, 4, 77, '06-06-2020', 2);
INSERT into ServiceSales (ServiceID, UsersID, Price, DatePurchased, TavernID) values (4, 4, 50, '03-31-2021', 2);
