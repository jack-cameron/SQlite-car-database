/*
Problem 3.1
Produce a table with the make and model of cars and their
respective owners.

Since the idea for this database is to show off your cars to
other users, it is important that we have all the users that
are associated with a certain car.
*/

select username, (make || " " || model) as name_of_car from
(select user_id, make, model from
(select car_id, make, model, g_id from cars 
join cars_in_garage on cars.car_id=cars_in_garage.car_in_garage_id)
as t join garage on t.g_id=garage.garage_id) as t2
join users on t2.user_id=users.id;

/*
username       name_of_car             
-------------  ------------------------
jack cameron   Honda Civic Type R      
brian oconner  Nissan Skyline GTR R34  
brian oconner  Mitsubishi Evolution VII
brian oconner  Subaru Impreza WRX STI  
han lue        Mazda RX7               
dom toretto    Dodge Charger R/T       
jack cameron   Ford Mustang            
brian oconner  Mitsubishi Eclipse      
gisele yasher  Nissan 350Z             
letty          Nissan 240SX            
tej parker     Acura NSX               
roman pearce   Mitsubishi Eclipse      
suki           Honda S2000             
sean boswell   Mitsubishi Evolution IX 
brian oconner  Toyota Supra            
jack cameron   Toyota GT86 
*/