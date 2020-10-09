SELECT
     name,
     SUM(amount) as total
from payments
join payment_methods pm on payments.payment_method = pm.payment_method_id
group by name with rollup;



/*

 Cash,10.00
Credit Card,351.38
,361.38
with roll up shows up after having it adds up the total.
 */