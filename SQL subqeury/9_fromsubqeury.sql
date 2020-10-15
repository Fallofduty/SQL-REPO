use sql_invoicing;

 SELECT invoice_id,
       invoice_total,
       (SELECT  AVG(invoice_total) from invoices) as invoice_avrage,
       (select sum(invoice_total) from invoices) as total_sum,
        (invoice_total)-(select invoice_avrage) as difference -- in here invoice_avrage must be included with difference with select or it wont work at all.
from invoices;

SELECT *
from (  SELECT client_id,
        (SELECT Sum(invoice_total) from invoices i where c.client_id=i.client_id ) as totalSales,
        (SELECT avg(invoice_total) from invoices) as avrage,
        (SELECT  totalSales-avrage) as difference
from clients c
) as info -- alias is a must. // can acess total sales from here
where totalSales is not null;