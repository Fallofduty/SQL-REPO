SELECT * FROM customers 
order by first_name DESC, first_name ASC; 

SELECT order_id, product_id,quantity,unit_price from order_items
where order_id =2
order by quantity*unit_price DESC;
/*
SELECT order_id, product_id,quantity,unit_price from order_items
where order_id =2
order by quantity*unit_price DESC;
*/