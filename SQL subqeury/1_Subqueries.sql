use sql_store;
SELECT * from products;



SELECT * from products;
/*
 this is the normal query
 */
SELECT unit_price
    from products
    where product_id =3;
-- this is the subquery
-- in here product id is they filter

SELECT * from products
WHERE unit_price >(
    SELECT unit_price
    from products
    where product_id =3

    );
/*
 2,"Pork - Bacon,back Peameal",49,4.65
4,"Brocolinni - Gaylan, Chinese",90,4.53
both thesse are products greather than lettuce
 */

 SELECT * from products
WHERE unit_price =(
    SELECT unit_price
    from products
    where product_id =3);

/*
 3,"Lettuce - Romaine, Heart",38,3.35
unit price same as lettuce

 */
     SELECT * from products
WHERE unit_price <(
    SELECT unit_price
    from products
    where product_id =3

    );
/*
 1,Foam Dinner Plate,70,1.21
5,Sauce - Ranch Dressing,94,1.63
6,Petit Baguette,14,2.39
7,Sweet Pea Sprouts,98,3.29
8,Island Oasis - Raspberry,26,0.74
9,Longan,67,2.26
10,Broom - Push,6,1.09
 here all the prices less than lettuce prices
 */
-- exercises
use sql_hr;
DESCRIBE employees;

SELECT * from employees
where salary >(SELECT avg(salary) from employees)
group by employee_id;
/*
 37851,Sayer,Matterson,Statistician III,98926,37270,1
40448,Mindy,Crissil,Staff Scientist,94860,37270,1
56274,Keriann,Alloisi,VP Marketing,110150,37270,1
67009,North,de Clerc,VP Product Management,114257,37270,2
67370,Elladine,Rising,Social Worker,96767,37270,2
72540,Guthrey,Iacopetti,Office Assistant I,117690,37270,3
72913,Kass,Hefferan,Computer Systems Analyst IV,96401,37270,3
76196,Mirilla,Janowski,Cost Accountant,119241,37270,3
84791,Hazel,Tarbert,General Manager,93760,37270,4
95213,Cole,Kesterton,Pharmacist,86119,37270,4
115357,Ivy,Fearey,Structural Engineer,92711,37270,5

 */

