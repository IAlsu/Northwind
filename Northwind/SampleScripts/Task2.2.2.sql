
/*select 
	(select e.EmployeeID, .LastName+e.FirstName as name from Employees as e) as Seller, 
	count(o.EmployeeID) as Amount
from Orders as o
where o.EmployeeID is not null
group by o.EmployeeID 
order by Amount desc*/

