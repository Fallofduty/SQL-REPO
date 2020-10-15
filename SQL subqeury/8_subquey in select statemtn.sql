use sql_invoicing
SELECT invoice_id,
       invoice_total,
       (SELECT  AVG(invoice_total) from invoices) as invoice_avrage,
       (select sum(invoice_total) from invoices) as total_sum
from invoices;
/*

 1,101.79,152.388235,2590.60
2,175.32,152.388235,2590.60
3,147.99,152.388235,2590.60
4,152.21,152.388235,2590.60
5,169.36,152.388235,2590.60
6,157.78,152.388235,2590.60
7,133.87,152.388235,2590.60
8,189.12,152.388235,2590.60
9,172.17,152.388235,2590.60
10,159.50,152.388235,2590.60
11,126.15,152.388235,2590.60
13,135.01,152.388235,2590.60
15,167.29,152.388235,2590.60
16,162.02,152.388235,2590.60
17,126.38,152.388235,2590.60
18,180.17,152.388235,2590.60
19,134.47,152.388235,2590.60

 in both cases both are the same both avrage and total sum is same
 both returns the same value on both columns both are same cause subquery only returns one value.
 */

 SELECT invoice_id,
       invoice_total,
       (SELECT  AVG(invoice_total) from invoices) as invoice_avrage,
       (select sum(invoice_total) from invoices) as total_sum,
        (invoice_total)-(select invoice_avrage) as difference -- in here invoice_avrage must be included with difference with select or it wont work at all.
from invoices;
/*
 1,101.79,152.388235,2590.60,-50.598235
2,175.32,152.388235,2590.60,22.931765
3,147.99,152.388235,2590.60,-4.398235
4,152.21,152.388235,2590.60,-0.178235
5,169.36,152.388235,2590.60,16.971765
6,157.78,152.388235,2590.60,5.391765
7,133.87,152.388235,2590.60,-18.518235
8,189.12,152.388235,2590.60,36.731765
9,172.17,152.388235,2590.60,19.781765
10,159.50,152.388235,2590.60,7.111765
11,126.15,152.388235,2590.60,-26.238235
13,135.01,152.388235,2590.60,-17.378235
15,167.29,152.388235,2590.60,14.901765
16,162.02,152.388235,2590.60,9.631765
17,126.38,152.388235,2590.60,-26.008235
18,180.17,152.388235,2590.60,27.781765
19,134.47,152.388235,2590.60,-17.918235

 */

 SELECT client_id,
        (SELECT Sum(invoice_total) from invoices i where c.client_id=i.client_id ) as totalSales,
        (SELECT avg(invoice_total) from invoices) as avrage,
        (SELECT  totalSales-avrage) as difference
from clients c
/*

 1,802.89,152.388235,650.501765
2,101.79,152.388235,-50.598235
3,705.90,152.388235,553.511765
4,,152.388235,
5,980.02,152.388235,827.631765
m
 */
 SE