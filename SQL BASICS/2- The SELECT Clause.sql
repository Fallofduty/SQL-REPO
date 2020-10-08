use sql_store;
show tables;
SELECT * FROM customers
where CUSTOMER_ID = 1
order by FIRST_Name;
/*
-- go by the following order 
FROM 
where 
ORDER

*/
-- SELECT clause in detail 
SELECT first_name,last_name from customers;
/*
Babara	MacCaffrey
Ines	Brushfield
Freddi	Boagey
Ambur	Roseburgh
Clemmie	Betchley
Elka	Twiddell
Ilene	Dowson
Thacher	Naseby
Romola	Rumgay
Levy	Mynett
*/
SELECT last_name, first_name, points +10 from customers; 
/*
MacCaffrey	Babara	2283
Brushfield	Ines	957
Boagey	Freddi	2977
Roseburgh	Ambur	467
Betchley	Clemmie	3685
Twiddell	Elka	3083
Dowson	Ilene	1682
Naseby	Thacher	215
Rumgay	Romola	1496
Mynett	Levy	806

points were added by 10 here 
*/

SELECT last_name, first_name, points +10 as added_points from customers;
/*
MacCaffrey	Babara	2283
Brushfield	Ines	957
Boagey	Freddi	2977
Roseburgh	Ambur	467
Betchley	Clemmie	3685
Twiddell	Elka	3083
Dowson	Ilene	1682
Naseby	Thacher	215
Rumgay	Romola	1496
Mynett	Levy	806

to use nick name use as 
*/

SELECT distinct state from customers;
/*
	state
	VA
	CO
	FL
	TX
	IL
	TN
	CA
	GA
    // all the non disticts are pretty much gone here. 

*/
describe products;
SELECT name,unit_price, unit_price*1.1 new_price
from products;
/*
	name	unit_price	       new_price
	Foam Dinner Plate	1.21	1.331
	Pork - Bacon,back Peameal	4.65	5.115
	Lettuce - Romaine, Heart	3.35	3.685
	Brocolinni - Gaylan, Chinese	4.53	4.983
	Sauce - Ranch Dressing	1.63	1.793
	Petit Baguette	2.39	2.629
	Sweet Pea Sprouts	3.29	3.619
	Island Oasis - Raspberry	0.74	0.814
	Longan	2.26	2.486
	Broom - Push	1.09	1.199

*/




