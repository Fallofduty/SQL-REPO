SELECT 
   c.customer_id,
   c.first_name,
   o.order_id,
   sh.name as Shipper_name
from customers c
left join orders o
	on c.customer_id = o.customer_id
left Join  shippers sh
     on o.shipper_id = sh.shipper_id;
     
/*
	customer_id	first_name	order_id
1	Babara		
2	Ines	4	
2	Ines	7	Mraz, Renner and Nolan
3	Freddi		
4	Ambur		
5	Clemmie	5	Satterfield LLC
5	Clemmie	8	
6	Elka	1	
6	Elka	10	Schinner-Predovic
7	Ilene	2	Mraz, Renner and Nolan
8	Thacher	3	
9	Romola		
10	Levy	6	
10	Levy	9	Hettinger LLC
    // this made sure left side was executed 
*/
SELECT o.order_date,
       o.order_id,
       c.first_name,
       sh.name,
       od.name as status
from orders o
left join customers c 
on o.customer_id = c.customer_id
left join shippers as sh 
on o.shipper_id = sh.shipper_id
left join order_statuses od
on o.status = od.order_status_id
/*
2019-01-30	1	Elka		Processed
2017-12-01	3	Thacher		Processed
2017-01-22	4	Ines		Processed
2018-11-18	6	Levy		Processed
2018-06-08	8	Clemmie		Processed
2018-08-02	2	Ilene	Mraz, Renner and Nolan	Shipped
2017-08-25	5	Clemmie	Satterfield LLC	Shipped
2018-09-22	7	Ines	Mraz, Renner and Nolan	Shipped
2017-07-05	9	Levy	Hettinger LLC	Shipped
2018-04-22	10	Elka	Schinner-Predovic	Shipped


*/
