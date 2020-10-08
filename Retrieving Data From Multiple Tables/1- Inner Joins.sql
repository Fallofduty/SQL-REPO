
use sql_store;
SELECT * from 
Orders  join -- inner is auto; 
customers 
on orders.customer_id = customers.customer_id;
/*
first is from order table 
other is from customer tabl.e
4	2	2017-01-22	1				2	Ines	Brushfield	1986-04-13	804-427-9456	14187 Commercial Trail	Hampton	VA	947
7	2	2018-09-22	2		2018-09-23	4	2	Ines	Brushfield	1986-04-13	804-427-9456	14187 Commercial Trail	Hampton	VA	947
5	5	2017-08-25	2		2017-08-26	3	5	Clemmie	Betchley	1973-11-07		5 Spohn Circle	Arlington	TX	3675
8	5	2018-06-08	1	Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.			5	Clemmie	Betchley	1973-11-07		5 Spohn Circle	Arlington	TX	3675
1	6	2019-01-30	1				6	Elka	Twiddell	1991-09-04	312-480-8498	7 Manley Drive	Chicago	IL	3073
10	6	2018-04-22	2		2018-04-23	2	6	Elka	Twiddell	1991-09-04	312-480-8498	7 Manley Drive	Chicago	IL	3073
2	7	2018-08-02	2		2018-08-03	4	7	Ilene	Dowson	1964-08-30	615-641-4759	50 Lillian Crossing	Nashville	TN	1672
3	8	2017-12-01	1				8	Thacher	Naseby	1993-07-17	941-527-3977	538 Mosinee Center	Sarasota	FL	205
6	10	2018-11-18	1	Aliquam erat volutpat. In congue.			10	Levy	Mynett	1969-10-13	404-246-3370	68 Lawn Avenue	Atlanta	GA	796
9	10	2017-07-05	2	Nulla mollis molestie lorem. Quisque ut erat.	2017-07-06	1	10	Levy	Mynett	1969-10-13	404-246-3370	68 Lawn Avenue	Atlanta	GA	796

*/

SELECT order_id, o.customer_id,first_name,last_name from 
Orders o join -- inner is auto; 
customers c
on o.customer_id = c.customer_id; 
/*
used orders with used orders.customer_id to make sure it works fine. 
//used o and c as a nickname
4	2	Ines	Brushfield
7	2	Ines	Brushfield
5	5	Clemmie	Betchley
8	5	Clemmie	Betchley
1	6	Elka	Twiddell
10	6	Elka	Twiddell
2	7	Ilene	Dowson
3	8	Thacher	Naseby
6	10	Levy	Mynett
9	10	Levy	Mynett
*/
describe products;
select p.product_id,p.name,oi.order_id, oi.quantity,oi.unit_price
from order_items oi join 
products p on
oi.product_id = p.product_id; 
/*
1	Foam Dinner Plate	2	2	9.10
1	Foam Dinner Plate	6	4	8.65
1	Foam Dinner Plate	10	10	6.01
2	Pork - Bacon,back Peameal	5	3	9.89
2	Pork - Bacon,back Peameal	6	4	3.28
3	Lettuce - Romaine, Heart	3	10	9.12
3	Lettuce - Romaine, Heart	4	7	6.99
3	Lettuce - Romaine, Heart	6	4	7.46
3	Lettuce - Romaine, Heart	7	7	9.17
4	Brocolinni - Gaylan, Chinese	1	4	3.74
4	Brocolinni - Gaylan, Chinese	2	4	1.66
5	Sauce - Ranch Dressing	6	1	3.45
5	Sauce - Ranch Dressing	8	2	6.94
6	Petit Baguette	2	2	2.94
6	Petit Baguette	9	5	7.28
8	Island Oasis - Raspberry	8	2	8.59
9	Longan	10	9	4.28
10	Broom - Push	4	7	6.40


*/

