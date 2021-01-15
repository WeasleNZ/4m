DROP TABLE IF EXISTS Inventory, Supplies, Sales, TavernServices, Services, Status, BasementRats, UserRoles, Taverns, Locations, Users, Roles;

create table Taverns(ID INT IDENTITY(1, 1), Name varchar(250), Floors int, OwnerID int, LocationID int);

create table Users(ID INT IDENTITY(1, 1), Name varchar(250), Birthday datetime);

Create table UserRoles(UserID int, RoleID tinyint);

create table Roles(ID tinyint identity(1,1), Name varchar(50), Description varchar(MAX));

Create table Locations (ID int identity(1,1), Name varchar(100));

create table BasementRats (ID int IDENTITY (1,1), Name varchar(100), TavernID int);

Create table Inventory(TavernID int, SupplyID int, Quantity int, DateReceived DATETIME);

Create table Supplies(ID int identity (1,1), Name varchar(250), Unit varchar(100), Cost float);

Create TABLE TavernServices(TavernID int, ServiceID int, StatusID Tinyint);

Create TABLE Sales(ID int identity(1,1), ServiceID int, UsersID int, Price decimal, DatePurchased DATETIME, TavernID int);

CREATE TABLE Services(ID int IDENTITY(1,1), Name VARCHAR(250));

CREATE TABLE Status(ID tinyint IDENTITY(1,1), Name VARCHAR(250));

ALTER TABLE Locations ADD primary key (id);
ALTER TABLE Users ADD primary key (id);
ALTER TABLE Roles ADD primary key (id);
ALTER TABLE Services ADD primary key (ID);
ALTER TABLE Sales ADD primary key (ID);
ALTER TABLE Supplies ADD primary key (ID);
ALTER TABLE Status ADD primary key (ID);
ALTER TABLE Taverns ADD primary key (ID);
ALTER TABLE Taverns ADD FOREIGN KEY (LocationID) References Locations(ID);
ALTER TABLE Taverns ADD FOREIGN KEY (OwnerID) References Users(ID);
ALTER TABLE UserRoles ADD FOREIGN KEY (UserID) References Users(ID);
ALTER TABLE UserRoles ADD FOREIGN KEY (RoleID) References Roles(ID);
ALTER TABLE BasementRats ADD FOREIGN KEY (TavernID) References Taverns(ID);
ALTER TABLE Inventory ADD FOREIGN KEY (TavernID) References Taverns(ID);
ALTER TABLE Inventory ADD FOREIGN KEY (SupplyID) References Supplies(ID);
ALTER TABLE TavernServices ADD FOREIGN KEY (TavernID) References Taverns(ID);
ALTER TABLE TavernServices ADD FOREIGN KEY (ServiceID) References Services(ID);
ALTER TABLE TavernServices ADD FOREIGN KEY (StatusID) References Status(ID);
ALTER TABLE Sales ADD FOREIGN Key (ServiceID) REFERENCES Services(ID);
ALTER TABLE Sales ADD FOREIGN Key (UsersID) REFERENCES Users(ID);
ALTER TABLE Sales ADD FOREIGN Key (TavernID) REFERENCES Taverns(ID);
