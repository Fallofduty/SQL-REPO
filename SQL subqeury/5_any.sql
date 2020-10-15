SELECT * from clients;

SELECT client_id
from invoices
group by client_id
having count(client_id)>1;


SELECT * from   clients
where client_id in (SELECT client_id
from invoices
group by client_id
having count(client_id)>1)
/*

 1,Vinte,3 Nevada Parkway,Syracuse,NY,315-252-7305
3,Yadel,096 Pawling Parkway,San Francisco,CA,415-144-6037
5,Topiclounge,0863 Farmco Road,Portland,OR,971-888-9129

 */

 SELECT * from   clients
where client_id =any (SELECT client_id
from invoices
group by client_id
having count(client_id)>1)

/*
 1,Vinte,3 Nevada Parkway,Syracuse,NY,315-252-7305
3,Yadel,096 Pawling Parkway,San Francisco,CA,415-144-6037
5,Topiclounge,0863 Farmco Road,Portland,OR,971-888-9129

 in and any both works the same way
 to use any use any=(statement )
 */