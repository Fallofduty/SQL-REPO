use sql_invoicing;
SELECT
   SUM(invoice_total) as total_sales
from invoices
group by cilent_id;