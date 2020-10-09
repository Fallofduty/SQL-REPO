use sql_invoicing;
SELECT

   MAX(invoice_total) as highest,
   min(invoice_total) as lowest,
   avg(invoice_total) as avrage,
   sum(invoice_total * 1.1) as total,
   count(*) as total_records  -- this counts null does not

from invoices
where invoice_date >'2019-07-01';

use sql_invoicing;
describe invoices;
SELECT * from invoices;

SELECT
       "first half of 2019" as date_range,
       sum(invoice_total) as total_sales,
       sum(payment_total) as total_payments,
       sum(invoice_total-payment_total) as what_we_expect
       from invoices
       where invoice_date between '2019-01-01' AND '2019-06-30'
union
SELECT
       "second half of the 2019" as date_range,
       sum(invoice_total) as total_sales,
       sum(payment_total) as total_payments,
       sum(invoice_total-payment_total) as what_we_expect
       from invoices
       where invoice_date between '2019-07-01' AND '2019-12-31'
union
SELECT
       "total" as date_range,
       sum(invoice_total) as total_sales,
       sum(payment_total) as total_payments,
       sum(invoice_total-payment_total) as what_we_expect
       from invoices
       where invoice_date between '2019-01-01' AND '2019-12-31';


/*
 first half of 2019,1539.07,212.97,1326.10
second half of the 2019,1051.53,148.41,903.12
total,2590.60,361.38,2229.22



 */