Select o.EmployeeID, o.CustomerID, count(o.CustomerID) as ordersCount
from Orders as o
where Year(o.OrderDate) ='1998'
group by o.EmployeeID, o.CustomerID
/*order by o.EmployeeID -- sorting for visible results*/

