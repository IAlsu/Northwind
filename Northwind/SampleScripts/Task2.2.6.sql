--Следуя заданию
Select e.FirstName+' '+e.LastName as Emp, 
	(select em.FirstName + ' ' + em.LastName
	 from Employees as em
	 where em.EmployeeID = e.ReportsTo) as Boss
from Employees as e

--Если сгруппировать
--выведу количество работников для каждого руководителя
Select 
	(select em.FirstName + ' ' + em.LastName
		from Employees as em
		where em.EmployeeID = e.ReportsTo) as Boss,
		count(e.EmployeeID) as countEmp
from Employees as e 
group by e.ReportsTo