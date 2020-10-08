SELECT * FROM 
customers 
where last_name REGEXP "field"; -- just use fielld no expression is nedded 

/*
2	Ines	Brushfield	1986-04-13	804-427-9456	14187 Commercial Trail	Hampton	VA	947
								

*/

SELECT * FROM 
customers 
where last_name REGEXP "field$"; -- last name ends with feild $dollar signn means that 

SELECT * FROM CUSTOMERS where last_name regexp 'FIELD|MAC'; -- pipe means both name 
/*
1	Babara	MacCaffrey	1986-03-28	781-932-9754	0 Sage Terrace	Waltham	VA	2273
2	Ines	Brushfield	1986-04-13	804-427-9456	14187 Commercial Trail	Hampton	VA	947
								
*/

SELECT * FROM customers where last_name regexp "^field"; -- last name must contain --regexp. 

SELECT * FROM customers where last_name regexp '[gim]e';
/*
will search for ge, me,ie -- think of it like a multiplying 
2	Ines	Brushfield	1986-04-13	804-427-9456	14187 Commercial Trail	Hampton	VA	947
3	Freddi	Boagey	1985-02-07	719-724-7869	251 Springs Junction	Colorado Springs	CO	2967
								
*/
SELECT * FROM customers where last_name regexp 'e[ld]';
/*
this will look for el ed 
only el match was found in last name;
2	Ines	Brushfield	1986-04-13	804-427-9456	14187 Commercial Trail	Hampton	VA	947
6	Elka	Twiddell	1991-09-04	312-480-8498	7 Manley Drive	Chicago	IL	3073
								
*/
SELECT * FROM customers where last_name regexp '[a-h]d';
/*
will look for match with [a-h] from a to h * d

*/
/*
-- means begining ^
-- $end
-- | or 
-- [abcd]g -- multu miply
-- [a-f] -- does range

*/
SELECT * from customers where first_name regexp "ELKA|AMBUR";
/*
4	Ambur	Roseburgh	1974-04-14	407-231-8017	30 Arapahoe Terrace	Orlando	FL	457
6	Elka	Twiddell	1991-09-04	312-480-8498	7 Manley Drive	Chicago	IL	3073
								
*/
SELECT * FROM customers where last_name regexp "EY$|ON$";
/*
1	Babara	MacCaffrey	1986-03-28	781-932-9754	0 Sage Terrace	Waltham	VA	2273
3	Freddi	Boagey	1985-02-07	719-724-7869	251 Springs Junction	Colorado Springs	CO	2967
5	Clemmie	Betchley	1973-11-07		5 Spohn Circle	Arlington	TX	3675
7	Ilene	Dowson	1964-08-30	615-641-4759	50 Lillian Crossing	Nashville	TN	1672
								
*/

SELECT * FROM customers where last_name regexp "SE";
/*
4	Ambur	Roseburgh	1974-04-14	407-231-8017	30 Arapahoe Terrace	Orlando	FL	457
8	Thacher	Naseby	1993-07-17	941-527-3977	538 Mosinee Center	Sarasota	FL	205
*/
SELECT * from customers where last_name regexp "^B[RU]";
/*
2	Ines	Brushfield	1986-04-13	804-427-9456	14187 Commercial Trail	Hampton	VA	947
								
*/




