SELECT
   client_id,
   SUM(invoice_total) as total_sales,
   COUNT(*) as number_of_invoices
from sql_invoicing.invoices
group by client_id
having total_sales > 500 and number_of_invoices >5;
/*
5, 980.02, 6
in having clause only can refer what was chosen from select statements



 */
use sql_store;
SELECT * from customers;

SELECT first_name,
       state,
       SUM((quantity*unit_price)) as total_spent
from customers join
orders o on customers.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id
where state = "va"
group by first_name, state
having total_spent > 100;
/*

 Ines,VA,157.92

 */