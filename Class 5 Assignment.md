1. Write a query to return a “report” of all users and their roles
- select * from users left join userroles on userroles.userid = users.id left join roles on roles.id = userroles.roleid;

2. Write a query to return all classes and the count of guests that hold those classes
- this looks right but it doesnt work: select *, count(select * from guestclasses gc where gc.classid = guestclasses.classid) from guestclasses;

3. Write a query that returns all guests ordered by name (ascending) and their classes and corresponding levels. Add a column that labels them beginner (lvl 1-5), intermediate (5-10) and expert (10+) for their classes (Don’t alter the table for this)
- also not working, looks right: select g.name, c.name, gc.level, (case when level > 10 then 'Expert' else case when level > 5 'Intermediate' else 'Nub' end) as Levelish from guests g left join guestclasses gc on gc.guestid = g.id left join classes c on c.id=gc.classid order by g.name;

4. Write a function that takes a level and returns a “grouping” from question 3 (e.g. 1-5, 5-10, 10+, etc)
5. Write a function that returns a report of all open rooms (not used) on a particular day (input) and which tavern they belong to 
6. Modify the same function from 5 to instead return a report of prices in a range (min and max prices) - Return Rooms and their taverns based on price inputs
7. Write a command that uses the result from 6 to Create a Room in another tavern that undercuts (is less than) the cheapest room by a penny - thereby making the new room the cheapest one
