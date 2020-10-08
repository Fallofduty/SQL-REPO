SELECT * from customers 
where state in("VA","FL","GA");
/*
1	Babara	MacCaffrey	1986-03-28	781-932-9754	0 Sage Terrace	Waltham	VA	2273
2	Ines	Brushfield	1986-04-13	804-427-9456	14187 Commercial Trail	Hampton	VA	947
4	Ambur	Roseburgh	1974-04-14	407-231-8017	30 Arapahoe Terrace	Orlando	FL	457
8	Thacher	Naseby	1993-07-17	941-527-3977	538 Mosinee Center	Sarasota	FL	205
10	Levy	Mynett	1969-10-13	404-246-3370	68 Lawn Avenue	Atlanta	GA	796
								
*/
select state not in("VA","FL","GA"); -- this will negate the value 

/*
customer_id, first_name, last_name, birth_date, phone, address, city, state, points
'1', 'Babara', 'MacCaffrey', '1986-03-28', '781-932-9754', '0 Sage Terrace', 'Waltham', 'VA', '2273'
'2', 'Ines', 'Brushfield', '1986-04-13', '804-427-9456', '14187 Commercial Trail', 'Hampton', 'VA', '947'
'4', 'Ambur', 'Roseburgh', '1974-04-14', '407-231-8017', '30 Arapahoe Terrace', 'Orlando', 'FL', '457'
'8', 'Thacher', 'Naseby', '1993-07-17', '941-527-3977', '538 Mosinee Center', 'Sarasota', 'FL', '205'
'10', 'Levy', 'Mynett', '1969-10-13', '404-246-3370', '68 Lawn Avenue', 'Atlanta', 'GA', '796'
*/

SELECT * from products where quantity_in_stock in(49,38,72);
/*
2	Pork - Bacon,back Peameal	49	4.65
3	Lettuce - Romaine, Heart	38	3.35
			no ptoduct with 72 here

*/