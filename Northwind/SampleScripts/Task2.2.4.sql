Select e.EmployeeID, c.CustomerID , c.City
from Customers as c, Employees as e
where c.City = e.City
order by c.City


