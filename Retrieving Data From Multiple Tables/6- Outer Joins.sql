use sql_store;
SELECT 
  c.customer_id,
  c.first_name
from customers c -- this is the left table only will show things from left side 
left join orders o
     on c.customer_id = o.customer_id; -- only returns the left side of the things. 
     
 
 /*
 1	Babara
2	Ines
2	Ines
3	Freddi
4	Ambur
5	Clemmie
5	Clemmie
6	Elka
6	Elka
7	Ilene
8	Thacher
9	Romola
10	Levy
10	Levy
 
 */
 
SELECT 
  c.customer_id,
  c.first_name
from customers c -- this is the left table only will show things from left side 
right join orders o
     on c.customer_id = o.customer_id; -- only returns the right side of the things.
     
     /*
     2	Ines
2	Ines
5	Clemmie
5	Clemmie
6	Elka
6	Elka
7	Ilene
8	Thacher
10	Levy
10	Levy
     
     
     */
     
SELECT  p.product_id,
          p.name,
          oi.quantity
from products p  
left join  order_items oi
          on p.product_id = oi.product_id;
          
          /*
          
          1	Foam Dinner Plate	2
1	Foam Dinner Plate	4
1	Foam Dinner Plate	10
2	Pork - Bacon,back Peameal	3
2	Pork - Bacon,back Peameal	4
3	Lettuce - Romaine, Heart	10
3	Lettuce - Romaine, Heart	7
3	Lettuce - Romaine, Heart	4
3	Lettuce - Romaine, Heart	7
4	Brocolinni - Gaylan, Chinese	4
4	Brocolinni - Gaylan, Chinese	4
5	Sauce - Ranch Dressing	1
5	Sauce - Ranch Dressing	2
6	Petit Baguette	2
6	Petit Baguette	5
7	Sweet Pea Sprouts	
8	Island Oasis - Raspberry	2
9	Longan	9
10	Broom - Push	7
          
          */
     