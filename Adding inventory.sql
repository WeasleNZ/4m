DROP TABLE IF EXISTS RoomStays, RoomStatus, Rooms, RoomStatusses, Supplysales, GuestClasses, Classes, Guests, Inventory, Supplies, ServiceSales, TavernServices, Services, Status, BasementRats, UserRoles, Taverns, Locations, Users, Roles;

create table Taverns(ID INT IDENTITY(1, 1), Name varchar(250), Floors int, OwnerID int, LocationID int);

create table Users(ID INT IDENTITY(1, 1), Name varchar(250), Birthday datetime);

create table Guests(ID INT IDENTITY(1, 1), Name varchar(250), Notes varchar(250), Birthday datetime, Cakedays varchar(250), StatusID tinyint);

Create table UserRoles(UserID int, RoleID tinyint);

Create table GuestClasses(GuestID int, ClassID int, Level int);

Create table Classes(ID int IDENTITY(1,1), Name varchar(250));

create table Roles(ID tinyint identity(1,1), Name varchar(50), Description varchar(MAX));

Create table Locations (ID int identity(1,1), Name varchar(100));

Create table Inventory(TavernID int, SupplyID int, Quantity int, DateReceived DATETIME);

Create table Supplies(ID int identity (1,1), Name varchar(250), Unit varchar(100), Cost float);

Create TABLE TavernServices(TavernID int, ServiceID int, StatusID Tinyint);

Create TABLE ServiceSales(ID int identity(1,1), ServiceID int, UsersID int, Price decimal, DatePurchased DATETIME, TavernID int);

Create TABLE SupplySales(ID int identity(1,1), SupplyID int, GuestID int, Price decimal, DatePurchased DATETIME, TavernID int);

CREATE TABLE Services(ID int IDENTITY(1,1), Name VARCHAR(250));

CREATE TABLE Status(ID tinyint IDENTITY(1,1), Name VARCHAR(250));

CREATE TABLE Rooms(ID tinyint IDENTITY(1,1), Name VARCHAR(250), Rate money);

CREATE TABLE RoomStatus(ID tinyint IDENTITY(1,1), RoomID tinyint, StatusID tinyint, TavernID int);

Create Table RoomStatusses(ID tinyint IDENTITY(1,1), Status varchar(250));

CREATE TABLE RoomStays(ID tinyint IDENTITY(1,1), Sale datetime, GuestID int, RoomID tinyint, StartDate datetime, Price money);

ALTER TABLE Locations ADD primary key (id);
ALTER TABLE Users ADD primary key (id);
ALTER TABLE Roles ADD primary key (id);
ALTER TABLE Services ADD primary key (ID);
ALTER TABLE ServiceSales ADD primary key (ID);
ALTER TABLE SupplySales ADD primary key (ID);
ALTER TABLE Supplies ADD primary key (ID);
ALTER TABLE Status ADD primary key (ID);
ALTER TABLE Taverns ADD primary key (ID);
ALTER TABLE Guests ADD primary key (ID);
ALTER TABLE Classes ADD primary key (ID);
ALTER TABLE Rooms ADD primary key (ID);
ALTER TABLE RoomStatus ADD primary key (ID);
ALTER TABLE RoomStays ADD primary key (ID);
ALTER TABLE RoomStatusses ADD primary key (ID);
ALTER TABLE Taverns ADD FOREIGN KEY (LocationID) References Locations(ID);
ALTER TABLE Taverns ADD FOREIGN KEY (OwnerID) References Users(ID);
ALTER TABLE UserRoles ADD FOREIGN KEY (UserID) References Users(ID);
ALTER TABLE UserRoles ADD FOREIGN KEY (RoleID) References Roles(ID);
ALTER TABLE Inventory ADD FOREIGN KEY (TavernID) References Taverns(ID);
ALTER TABLE Inventory ADD FOREIGN KEY (SupplyID) References Supplies(ID);
ALTER TABLE TavernServices ADD FOREIGN KEY (TavernID) References Taverns(ID);
ALTER TABLE TavernServices ADD FOREIGN KEY (ServiceID) References Services(ID);
ALTER TABLE TavernServices ADD FOREIGN KEY (StatusID) References Status(ID);
ALTER TABLE ServiceSales ADD FOREIGN Key (ServiceID) REFERENCES Services(ID);
ALTER TABLE ServiceSales ADD FOREIGN Key (UsersID) REFERENCES Users(ID);
ALTER TABLE ServiceSales ADD FOREIGN Key (TavernID) REFERENCES Taverns(ID);
ALTER TABLE SupplySales ADD FOREIGN Key (SupplyID) REFERENCES Supplies(ID);
ALTER TABLE SupplySales ADD FOREIGN Key (GuestID) REFERENCES Guests(ID);
ALTER TABLE SupplySales ADD FOREIGN Key (TavernID) REFERENCES Taverns(ID);
ALTER TABLE GuestClasses ADD FOREIGN Key (GuestID) REFERENCES Guests(ID);
ALTER TABLE GuestClasses ADD FOREIGN Key (ClassID) REFERENCES Classes(ID);
ALTER TABLE Guests ADD FOREIGN Key (StatusID) REFERENCES Status(ID);

ALTER TABLE RoomStatus ADD FOREIGN Key (RoomID) REFERENCES Rooms(ID);
ALTER TABLE RoomStatus ADD FOREIGN Key (TavernID) REFERENCES Taverns(ID);
ALTER TABLE RoomStatus ADD FOREIGN Key (StatusID) REFERENCES RoomStatusses(ID);

ALTER TABLE RoomStays ADD FOREIGN Key (GuestID) REFERENCES Guests(ID);
ALTER TABLE RoomStays ADD FOREIGN Key (RoomID) REFERENCES Rooms(ID);
