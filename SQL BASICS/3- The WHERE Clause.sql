SELECT * FROM customers 
where points > 3000;
/*customer_id, first_name, last_name, birth_date, phone, address, city, state, points
5	Clemmie	Betchley	1973-11-07		5 Spohn Circle	Arlington	TX	3675
6	Elka	Twiddell	1991-09-04	312-480-8498	7 Manley Drive	Chicago	IL	3073
															
*/
SELECT * from customers where state = "VA";
/*customer_id, first_name, last_name, birth_date, phone, address, city, state, points
1	Babara	MacCaffrey	1986-03-28	781-932-9754	0 Sage Terrace	Waltham	VA	2273
2	Ines	Brushfield	1986-04-13	804-427-9456	14187 Commercial Trail	Hampton	VA	947


								
*/
SELECT * from customers 
where birth_date > '1990-01-01';
/*

# customer_id, first_name, last_name, birth_date, phone, address, city, state, points
'6', 'Elka', 'Twiddell', '1991-09-04', '312-480-8498', '7 Manley Drive', 'Chicago', 'IL', '3073'
'8', 'Thacher', 'Naseby', '1993-07-17', '941-527-3977', '538 Mosinee Center', 'Sarasota', 'FL', '205'
'9', 'Romola', 'Rumgay', '1992-05-23', '559-181-3744', '3520 Ohio Trail', 'Visalia', 'CA', '1486'

*/

SELECT * 
from orders 
where order_date >='2019-01-01';
/*
# order_id, customer_id, order_date, status, comments, shipped_date, shipper_id
'1', '6', '2019-01-30', '1', NULL, NULL, NULL

*/

