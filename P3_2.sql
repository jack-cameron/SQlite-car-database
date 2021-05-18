/*
Problem 3.2
Produce the make, model and horsepower of the 
car with the highest horsepower.

There could possibly be a category for fastest car on the website.
Or if a user wanted to have the fastest car in their garage.
*/

select max(hp) as horsepower, make, model
from engine join cars on engine.car_id=cars.car_id;

/*
Test Output:
horsepower  make   model      
----------  -----  -----------
900         Dodge  Charger R/T
*/