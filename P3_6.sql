/*
Problem 1.6
Which user has the most cars in their garage?
produce a table with their username and number of cars.

This query is important because users could possibly
be ranked by the number of cars they have in their garage.
So knowing who has the most would be important.
*/

select username, num_of_cars from
(select user_id, num_of_cars from 
(select max(c) as num_of_cars, g_id from 
(select count(g_id) as c, g_id from cars_in_garage group by g_id)) 
as t join garage on t.g_id=garage.garage_id) as t2
join users on t2.user_id=users.id;

/*
username       num_of_cars
-------------  -----------
brian oconner  5  
*/