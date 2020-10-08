use sql_store;
SELECT o.order_id,o.order_date,c.first_name,c.last_name,os.name as status FROm orders o 
join customers c 
on o.customer_id = c.customer_id
join  order_statuses os on
o.status = os.order_status_id;
/*
1	2019-01-30	Elka	Twiddell	Processed
3	2017-12-01	Thacher	Naseby	Processed
4	2017-01-22	Ines	Brushfield	Processed
6	2018-11-18	Levy	Mynett	Processed
8	2018-06-08	Clemmie	Betchley	Processed
2	2018-08-02	Ilene	Dowson	Shipped
5	2017-08-25	Clemmie	Betchley	Shipped
7	2018-09-22	Ines	Brushfield	Shipped
9	2017-07-05	Levy	Mynett	Shipped
10	2018-04-22	Elka	Twiddell	Shipped

*/

SELECT 
c.name as client_name,
p.amount,
p.date,
pm.name as payment_method


 from payments p join 
clients c
on c.client_id = p.client_id
join 
payment_methods pm 
on p.payment_method = pm.payment_method_id;

/*
	client_name	amount	date	payment_method
	Topiclounge	8.18	2019-02-12	Credit Card
	Vinte	74.55	2019-01-03	Credit Card
	Yadel	0.03	2019-01-11	Credit Card
	Topiclounge	87.44	2019-01-26	Credit Card
	Yadel	80.31	2019-01-15	Credit Card
	Yadel	68.10	2019-01-15	Credit Card
	Topiclounge	32.77	2019-01-08	Credit Card
	Topiclounge	10.00	2019-01-08	Cash


*/