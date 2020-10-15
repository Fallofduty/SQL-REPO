use sql_invoicing;
-- subqeury
SELECT * from clients
where client_id not in (SELECT client_id from invoices);


-- join operator
SELECT * from clients
left join invoices i on clients.client_id = i.client_id
where invoice_id is null ;
/*
 4,Kwideo,81674 Westerfield Circle,Waco,TX,254-750-0784,,,,,,,,

 */
 use sql_store;
-- using join answer
SELECT  distinct c.customer_id,
       first_name,
       last_name
from customers c join orders o on c.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id
where product_id in (SELECT product_id from order_items where product_id=3);

/*
 8,Thacher,Naseby
2,Ines,Brushfield
10,Levy,Mynett
using subqeueires
 */

 -- using join
SELECT   c.customer_id,
       first_name,
       last_name
from customers c
where c.customer_id in (SELECT o.customer_id from orders o
                        join order_items oi on o.order_id = oi.order_id
                        where product_id=3); -- in will return multiple answers.

SELECT  distinct c.customer_id,
       first_name,
       last_name
from customers c join orders o on c.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id
where oi.product_id=3;
/*
 8,Thacher,Naseby
2,Ines,Brushfield
10,Levy,Mynett

 */