select e.EmployeeID
from Employees e
where exists 
	(select o.EmployeeID
	from Orders o
	where o.EmployeeID = e.EmployeeID
	group by o.EmployeeID
	having count(*) > 150)
	
--Для проверки
select count(*)
 from orders where EmployeeID =4
 --156>150 - попал в выборку
 select count(*)
 from orders where EmployeeID =1
 --123<150 - не попал в выборку