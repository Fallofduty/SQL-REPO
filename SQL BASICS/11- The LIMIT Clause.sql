SELECT * from customers 
limit 10; -- this limits to 10 rows; 
SELECT * from customers 
limit 6,3;
/*
7	Ilene	Dowson	1964-08-30	615-641-4759	50 Lillian Crossing	Nashville	TN	1672
8	Thacher	Naseby	1993-07-17	941-527-3977	538 Mosinee Center	Sarasota	FL	205
9	Romola	Rumgay	1992-05-23	559-181-3744	3520 Ohio Trail	Visalia	CA	1486
								
                                skip first 6 just do 3 so 7 8 9
*/

SELECT * FROM customers 
order by points DESC
limit 3;
/*
5	Clemmie	Betchley	1973-11-07		5 Spohn Circle	Arlington	TX	3675
6	Elka	Twiddell	1991-09-04	312-480-8498	7 Manley Drive	Chicago	IL	3073
3	Freddi	Boagey	1985-02-07	719-724-7869	251 Springs Junction	Colorado Springs	CO	2967
								limit clause should be at the end always.

*/