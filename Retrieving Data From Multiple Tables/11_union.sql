use SQL_STORE;

SELECT order_id,
       order_date,
       "active" as status

from orders
where order_date >='2019-01-01'
union 
SELECT order_id,
       order_date,
       "archived" as status

from orders
where order_date <"2019-01-01";
/*
1	2019-01-30	active
2	2018-08-02	archived
3	2017-12-01	archived
4	2017-01-22	archived
5	2017-08-25	archived
6	2018-11-18	archived
7	2018-09-22	archived
8	2018-06-08	archived
9	2017-07-05	archived
10	2018-04-22	archived
thesse combined the tables. 


*/

SELECT customer_id,
       first_name,
       points,
       "bronze" as type
       
from customers
where points<2000
union 
SELECT customer_id,
       first_name,
       points,
       "silver"

from customers 
where points  between 2000 and 3000

union 

SELECT customer_id,
       first_name,
       points,
       "gold"

from customers 
where points >3000
order by first_name;
/*4	Ambur	457	bronze
1	Babara	2273	silver
5	Clemmie	3675	gold
6	Elka	3073	gold
3	Freddi	2967	silver
7	Ilene	1672	bronze
2	Ines	947	bronze
10	Levy	796	bronze
9	Romola	1486	bronze
8	Thacher	205	bronze



*/



