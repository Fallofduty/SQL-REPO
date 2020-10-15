use sql_store;

SELECT * from products;

SELECT * from products
where product_id not in(SELECT product_id from order_items);

/*
 not in returns a list of values not single
 in look for matches
 7,Sweet Pea Sprouts,98,3.29

 */

-- exercise
use sql_invoicing;
DESCRIBE clients;

SELECT * from clients
where client_id not in (SELECT client_id from invoices);
/*
 4,Kwideo,81674 Westerfield Circle,Waco,TX,254-750-0784

 */