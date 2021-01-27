<h1> Class 3 Assignment</h1>

> 0. Complete the lab to create the SELECT CREATE query! Reproduce the output:

I found 2 answers .. after some experimenting with the second one i came up with the first one (the first seems best imo)

select 'CREATE TABLE Taverns (' union all select concat(COLUMN_NAME, ' ', DATA_TYPE, case when data_type = 'varchar' then concat('(' ,CHARACTER_MAXIMUM_LENGTH,')') else null end, ',')  from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'Taverns'union all select ')' ;

or

select 'CREATE TABLE Taverns (' union all select concat(COLUMN_NAME, ' ', case when DATA_TYPE='varchar' then concat(data_type, '(', CHARACTER_MAXIMUM_LENGTH , ')') else data_type end, ',') from INFORMATION_SCHEMA.COLUMNS where table_name = 'Taverns' union all select ')';

> 1. The system should also be able to track Rooms. Rooms should have a status and an associated tavern. There should be a way to track Room Stays which will contain a sale, guest, room, the date it was stayed in and the rate

See the added code inside "adding inventory.sql" and "seed.sql" in the assignment 3 branch (main should match this currently)


> 2. Write a query that returns guests with a birthday before 2000. 

select * from guests where birthday < '2000-01-01';


> 3. Write a query to return rooms that cost more than 100 gold a night

select * from rooms where rate > '100';


> 4. Write a query that returns UNIQUE guest names. 

select distinct(name), * from guests;
or if you only wanted the name:   select distinct(name) from guests;


> 5. Write a query that returns all guests ordered by name (ascending) Use ASC or DESC after your ORDER BY [col]

select * from guests order by name asc;


> 6. Write a query that returns the top 10 highest price sales

select top 10 * from roomstays order by price desc;


> 7. Write a query to return all the values stored in all Lookup Tables

Couldnt get the group function to work despite following the examples supplied
Why does this fail??
SELECT * from INFORMATION_SCHEMA.COLUMNS GROUP BY TABLE_NAME;
I guess the smart question is - how do I groupby when its a systemview and not a db object?

> 8. Write a query that returns Guest Classes with Levels and Generate a new column with a label for their level grouping (lvl 1-10, 10-20, etc)

