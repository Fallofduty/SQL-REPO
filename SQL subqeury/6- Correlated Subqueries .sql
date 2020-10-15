use sql_hr;

SELECT * from employees;

SELECT * from employees e
where salary >(SELECT Avg(salary) from employees e2 where e.office_id =e2.office_id);

/*
 37851,Sayer,Matterson,Statistician III,98926,37270,1
40448,Mindy,Crissil,Staff Scientist,94860,37270,1
56274,Keriann,Alloisi,VP Marketing,110150,37270,1
67009,North,de Clerc,VP Product Management,114257,37270,2
67370,Elladine,Rising,Social Worker,96767,37270,2
72540,Guthrey,Iacopetti,Office Assistant I,117690,37270,3
76196,Mirilla,Janowski,Cost Accountant,119241,37270,3
84791,Hazel,Tarbert,General Manager,93760,37270,4
95213,Cole,Kesterton,Pharmacist,86119,37270,4
98374,Estrellita,Daleman,Staff Accountant IV,70187,37270,5
115357,Ivy,Fearey,Structural Engineer,92711,37270,5
this is a subqeury where it is being used on here
 */

 use sql_invoicing;
SELECT * from   invoices i
where invoice_total>(SELECT avg(invoice_total) from invoices i2 where i.client_id=i2.client_id)
/*
 2,03-898-6735,5,175.32,8.18,2019-06-11,2019-07-01,2019-02-12
4,56-934-0748,3,152.21,0.00,2019-03-08,2019-03-28,
5,87-052-3121,5,169.36,0.00,2019-07-18,2019-08-07,
8,78-145-1093,1,189.12,0.00,2019-05-20,2019-06-09,
9,77-593-0081,5,172.17,0.00,2019-07-09,2019-07-29,
15,55-105-9605,3,167.29,80.31,2019-11-25,2019-12-15,2019-01-15
16,10-451-8824,1,162.02,0.00,2019-03-30,2019-04-19,
18,52-269-9803,5,180.17,42.77,2019-05-23,2019-06-12,2019-01-08

 */