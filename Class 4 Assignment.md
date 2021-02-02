1. Write a query to return users who have admin roles
- select * from roles where name = 'Admin'; --is that the right table? i dont have "admin" anywhere in my seed so im not sure what is being asked.

2. Write a query to return users who have admin roles and information about their taverns
- This isn't doable with my database? I have no association with the users table to the taverns table with the exception of owners? (via taverns.ownderid)

3. Write a query that returns all guests ordered by name (ascending) and their classes and corresponding levels
- select * from guests left join guestclasses on guestclasses.guestid = guests.id left join classes on classes.id = guestclasses.classid;

4. Write a query that returns the top 10 sales in terms of sales price and what the services were

5. Write a query that returns guests with 2 or more classes
6. Write a query that returns guests with 2 or more classes with levels higher than 5
7. Write a query that returns guests with ONLY their highest level class
8. Write a query that returns guests that stay within a date range. Please remember that guests can stay for more than one night AND not all of the dates they stay have to be in that range (just some of them)
9. Using the additional queries provided, take the lab’s SELECT ‘CREATE query’ and add any IDENTITY and PRIMARY KEY constraints to it.
