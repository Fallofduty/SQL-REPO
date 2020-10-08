use sql_store;

SELECT 
   o.order_id,
   c.first_name,
   sh.name as Shipper
from orders o 
left join customers c
using (customer_id) -- this is same as using c.order_id= o.order_id
left join shippers sh 
  using (shipper_id);
  
  /*
  '1', 'Elka', NULL
'2', 'Ilene', 'Mraz, Renner and Nolan'
'3', 'Thacher', NULL
'4', 'Ines', NULL
'5', 'Clemmie', 'Satterfield LLC'
'6', 'Levy', NULL
'7', 'Ines', 'Mraz, Renner and Nolan'
'8', 'Clemmie', NULL
'9', 'Levy', 'Hettinger LLC'
'10', 'Elka', 'Schinner-Predovic'
 must be same key 
  
  
  */
  
  SELECT * 
  from order_items oi 
  join order_item_notes oin 
  using (order_id,product_id);
  use sql_invoicing;
  show tables;
 SELECT 
    p.date, -- payments
    c.name  as clients, -- clients 
    p.amount,
    pm.name      -- payment_methods
from payments p 
left join clients c 
   using(client_id)
left join payment_methods pm 
   on pm.payment_method_id = p. payment_method;
   
/*
2019-02-12	Topiclounge	8.18	Credit Card
2019-01-03	Vinte	74.55	Credit Card
2019-01-11	Yadel	0.03	Credit Card
2019-01-26	Topiclounge	87.44	Credit Card
2019-01-15	Yadel	80.31	Credit Card
2019-01-15	Yadel	68.10	Credit Card
2019-01-08	Topiclounge	32.77	Credit Card
2019-01-08	Topiclounge	10.00	Cash
*/
    
  
  