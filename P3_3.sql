/*
Problem 3.3
Show all car's make, model, and year in the garage of Brian O'Conner, his username
is "brian oconner".

This query is important because users should be able to 
check out what cars other users have in their garage. 
*/


select make, model, year from
(select * from cars_in_garage join 
(select garage_id from 
(select * from users
join garage on users.id=garage.user_id) where username='brian oconner') as t 
on t.garage_id=cars_in_garage.g_id) as t2 join cars on t2.car_in_garage_id=cars.car_id; 

/*
make        model            year
----------  ---------------  ----
Nissan      Skyline GTR R34  1999
Mitsubishi  Evolution VII    2002
Subaru      Impreza WRX STI  2012
Mitsubishi  Eclipse          1995
Toyota      Supra            1994
*/