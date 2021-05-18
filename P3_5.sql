/*
Problem 1.5
Produce a table with the make and model of all Rear-wheel drive
cars (RWD).

Since a car's drivetrain is a significant feature in 
it's driving experience, a user should be able to filter through 
cars by their drivetrain. 
*/

select make, model, drivetrain from cars where drivetrain='RWD';

/*
Test Output:
make    model        drivetrain
------  -----------  ----------
Mazda   RX7          RWD       
Dodge   Charger R/T  RWD       
Ford    Mustang      RWD       
Nissan  350Z         RWD       
Nissan  240SX        RWD       
Acura   NSX          RWD       
Honda   S2000        RWD       
Toyota  Supra        RWD       
Toyota  GT86         RWD 
*/