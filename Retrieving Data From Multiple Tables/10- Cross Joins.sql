use sql_store;

SELECT 
   c.first_name as customer,
   p.name as product
from customers c 
cross join products p;
-- this will shiow all the data 

SELECT * from shippers,products;

-- hard way 

SELECT * from shippers cross join products;
