/*
Problem 3.4
What is the most common car engine type?

This query is important because it can be helpful to see
what type of engine is the most popular among users.
*/

select type from 
(select type, max(c) from (select type, count(type) as c 
from engine group by type));

/*
Test Output:

type    
--------
Inline-4
*/