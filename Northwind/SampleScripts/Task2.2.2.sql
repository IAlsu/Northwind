select o.EmployeeID as Seller, 
	(select e.FirstName + ' ' + e.LastName
	 from Employees as e
	 where EmployeeID = o.EmployeeID) as SellerName,
	COUNT(*) as Amount
from Orders as o
group by o.EmployeeID
order by Amount desc;
