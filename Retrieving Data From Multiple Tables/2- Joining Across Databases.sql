SELECT * from order_items oi 
join sql_inventory.products p
on oi.product_id = p.product_id; 

/*
2	1	2	9.10	1	Foam Dinner Plate	70	1.21
6	1	4	8.65	1	Foam Dinner Plate	70	1.21
10	1	10	6.01	1	Foam Dinner Plate	70	1.21
5	2	3	9.89	2	Pork - Bacon,back Peameal	49	4.65
6	2	4	3.28	2	Pork - Bacon,back Peameal	49	4.65
3	3	10	9.12	3	Lettuce - Romaine, Heart	38	3.35
4	3	7	6.99	3	Lettuce - Romaine, Heart	38	3.35
6	3	4	7.46	3	Lettuce - Romaine, Heart	38	3.35
7	3	7	9.17	3	Lettuce - Romaine, Heart	38	3.35
1	4	4	3.74	4	Brocolinni - Gaylan, Chinese	90	4.53
2	4	4	1.66	4	Brocolinni - Gaylan, Chinese	90	4.53
6	5	1	3.45	5	Sauce - Ranch Dressing	94	1.63
8	5	2	6.94	5	Sauce - Ranch Dressing	94	1.63
2	6	2	2.94	6	Petit Baguette	14	2.39
9	6	5	7.28	6	Petit Baguette	14	2.39
8	8	2	8.59	8	Island Oasis - Raspberry	26	0.74
10	9	9	4.28	9	Longan	67	2.26
4	10	7	6.40	10	Broom - Push	6	1.09

both two are different database to retrive from different database use database followed by table name


*/