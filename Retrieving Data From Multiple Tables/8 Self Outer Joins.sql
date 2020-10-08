use sql_hr;
SELECT
    e.employee_id,
    e.first_name,
    m.first_name as manager

  from employees e
 left join employees m 
     on e.reports_to = m.employee_id
     
     /*
     	employee_id	first_name	manager
	33391	D'arcy	Yovonnda
	37270	Yovonnda	
	37851	Sayer	Yovonnda
	40448	Mindy	Yovonnda
	56274	Keriann	Yovonnda
	63196	Alaster	Yovonnda
	67009	North	Yovonnda
	67370	Elladine	Yovonnda
	68249	Nisse	Yovonnda
	72540	Guthrey	Yovonnda
	72913	Kass	Yovonnda
	75900	Virge	Yovonnda
	76196	Mirilla	Yovonnda
	80529	Lynde	Yovonnda
	80679	Mildrid	Yovonnda
	84791	Hazel	Yovonnda
	95213	Cole	Yovonnda
	96513	Theresa	Yovonnda
	98374	Estrellita	Yovonnda
	115357	Ivy	Yovonnda
     
     
     */