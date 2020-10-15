use sql_invoicing;
DESCRIBE invoices;

SELECT max(invoice_total) from invoices;  -- 189.12

SELECT Max(invoice_total) from invoices
where client_id =3;

SELECT (invoice_total) from invoices
where client_id =3;

SELECT *from invoices
where invoice_total >(SELECT Max(invoice_total) from invoices
where client_id =3);

/*
 2,03-898-6735,5,175.32,8.18,2019-06-11,2019-07-01,2019-02-12
5,87-052-3121,5,169.36,0.00,2019-07-18,2019-08-07,
8,78-145-1093,1,189.12,0.00,2019-05-20,2019-06-09,
9,77-593-0081,5,172.17,0.00,2019-07-09,2019-07-29,
18,52-269-9803,5,180.17,42.77,2019-05-23,2019-06-12,2019-01-08

 */
 SELECT * from invoices
where invoice_total > (SELECT invoice_total from invoices where  client_id=3); -- this does not work returns more than one value but we ar looking for one value


-- to fix it do this
SELECT * from invoices
where invoice_total >all (SELECT invoice_total from invoices where  client_id=3)
/*
 what is the largest value for client 3 ->167.29
 by using all it will find the highest value and will compare it with client id 3
 with the following value 152.21
133.87
126.15
167.29
126.38
 vs beated rows  all thesse are higher than sql normal ones
 175.32
169.36
189.12
172.17
180.17

 */
SELECT * from invoices
where invoice_total <all (SELECT invoice_total from invoices where  client_id=3)
/*
 1,91-953-3396,2,101.79,0.00,2019-03-09,2019-03-29,
in here only one shows up
 */

 SELECT * from invoices
where invoice_total <=all (SELECT invoice_total from invoices where  client_id=3)
/*
 1,91-953-3396,2,101.79,0.00,2019-03-09,2019-03-29,
11,20-848-0181,3,126.15,0.03,2019-01-07,2019-01-27,2019-01-11
3 is included here
 cause is less than greater than
 */

 SELECT * from invoices
where invoice_total >=all (SELECT invoice_total from invoices where  client_id=3)
/*
 2,03-898-6735,5,175.32,8.18,2019-06-11,2019-07-01,2019-02-12
5,87-052-3121,5,169.36,0.00,2019-07-18,2019-08-07,
8,78-145-1093,1,189.12,0.00,2019-05-20,2019-06-09,
9,77-593-0081,5,172.17,0.00,2019-07-09,2019-07-29,
15,55-105-9605,3,167.29,80.31,2019-11-25,2019-12-15,2019-01-15
18,52-269-9803,5,180.17,42.77,2019-05-23,2019-06-12,2019-01-08
more than one is included here
cause 5 has 3 values which are higher than 167.29
 */
