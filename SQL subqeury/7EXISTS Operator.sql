use sql_invoicing;
SELECT * from clients c
where EXISTS(SELECT client_id from invoices i
          where c.client_id= i.client_id);
/*
 1,Vinte,3 Nevada Parkway,Syracuse,NY,315-252-7305
2,Myworks,34267 Glendale Parkway,Huntington,WV,304-659-1170
3,Yadel,096 Pawling Parkway,San Francisco,CA,415-144-6037
5,Topiclounge,0863 Farmco Road,Portland,OR,971-888-9129

 */




-- retunrs only 1 result per user.


SELECT * from clients c
where client_id in(SELECT client_id from  invoices );

use sql_store;

SELECT * from products
where product_id not in (SELECT distinct product_id from order_items);

SELECT * from products p
where  not exists(SELECT product_id from order_items o where p.product_id=o.product_id); -- in exists where clause is nedded with keys