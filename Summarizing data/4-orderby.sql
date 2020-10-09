use sql_invoicing;
SELECT
   SUM(invoice_total) as total_sales
FROM invoices
WHERE invoice_date >="2019-07-01"
GROUP BY client_id
ORDER BY total_sales DESC;


/*
 the order of the clause is this way '
 do where
 group and order by

489.52
427.54
134.47

 */
SELECT
   state,
   city,
   SUM(invoice_total) as total_sales
from invoices i
JOIN clients c USING (client_id)
where invoice_date >="2019-07-01"
GROUP BY state,city
order by total_sales DESC;
/*

 OR,Portland,489.52
CA,San Francisco,427.54
NY,Syracuse,134.47

 */
SELECT date,
       pm.name as payment_methods,
       SUM(amount) as Total_payments
FROM payments p
join payment_methods pm on p.payment_method = pm.payment_method_id
group by date,payment_method
order by  date

/*

 2019-01-03,Credit Card,74.55
2019-01-08,Credit Card,32.77
2019-01-08,Cash,10.00
2019-01-11,Credit Card,0.03
2019-01-15,Credit Card,148.41
2019-01-26,Credit Card,87.44
2019-02-12,Credit Card,8.18

 */