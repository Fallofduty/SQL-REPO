use sql_store;

SELECT * FROM order_items oi
join order_item_notes oin 
ON  oi.order_id = oin.order_id
AND oi.product_id = oin.product_id;

/*
in here both have to be connected cause order_items is a compiste table with 2 primary keys 
ON  oi.order_id = oin.order_id
AND oi.product_id = oin.product_id; 
*/