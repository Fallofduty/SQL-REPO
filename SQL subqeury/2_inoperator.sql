use sql_store;
SELECT  DISTINCT(product_id) from order_items)

SELECT * from products
where product_id not in(SELECT  DISTINCT(product_id) from order_items)

-- 7,Sweet Pea Sprouts,98,3.29
use sql_invoicing;

SELECT * from invoices where payment_total = 0;

SELECT * from clients where client_id not in(SELECT client_id from invoices);