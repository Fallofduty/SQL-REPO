SELECT * FROM CUSTOMERS 
where points between 1000 and 3000;
/*
	customer_id	first_name	last_name	birth_date	phone	address	city	state	points
	1	Babara	MacCaffrey	1986-03-28	781-932-9754	0 Sage Terrace	Waltham	VA	2273
	3	Freddi	Boagey	1985-02-07	719-724-7869	251 Springs Junction	Colorado Springs	CO	2967
	7	Ilene	Dowson	1964-08-30	615-641-4759	50 Lillian Crossing	Nashville	TN	1672
	9	Romola	Rumgay	1992-05-23	559-181-3744	3520 Ohio Trail	Visalia	CA	1486
					-- and can not be used with it 				

*/
SELECT * FROM CUSTOMERS where birth_date between '1990-01-01' and '2020-01-01';
/*
	customer_id	first_name	last_name	birth_date	phone	address	city	state	points
	6	Elka	Twiddell	1991-09-04	312-480-8498	7 Manley Drive	Chicago	IL	3073
	8	Thacher	Naseby	1993-07-17	941-527-3977	538 Mosinee Center	Sarasota	FL	205
	9	Romola	Rumgay	1992-05-23	559-181-3744	3520 Ohio Trail	Visalia	CA	1486
									
*/
