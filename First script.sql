DROP TABLE IF EXISTS BasementRats, UserRoles, Taverns, Locations, Users, Roles;

create table Taverns(ID INT IDENTITY(1, 1), Name varchar(250), LocationID int, OwnerID int, Floors int);

create table Users(ID INT IDENTITY(1, 1), Name varchar(250), RoleID tinyint);

create table Roles(ID tinyint identity(1,1), Name varchar(50), Description varchar(MAX));

create table BasementRats (ID int IDENTITY (1,1), Name varchar(100), Tavernid int);

Create table Locations (ID int identity(1,1), Name varchar(100) );

Create table UserRoles(UserID int, RoleID tinyint);

ALTER TABLE Locations ADD primary key (id);
ALTER TABLE Users ADD primary key (id);
ALTER TABLE Roles ADD primary key (id);
ALTER TABLE Taverns ADD primary key (ID);
ALTER TABLE Taverns ADD FOREIGN KEY (LocationID) References Locations(ID);
ALTER TABLE Taverns ADD FOREIGN KEY (OwnerID) References Users(ID);
ALTER TABLE Users ADD FOREIGN KEY (RoleID) References Roles(ID);
ALTER TABLE UserRoles ADD FOREIGN KEY (UserID) References Users(ID);
ALTER TABLE UserRoles ADD FOREIGN KEY (RoleID) References Roles(ID);
ALTER TABLE BasementRats ADD FOREIGN KEY (TavernID) References Taverns(ID);

insert into Taverns (Name)
values ('First Tavernname');

