select c.CompanyName, count(o.CustomerID) as custOrders
from Customers c
	left join Orders o
	on c.CustomerID =o.CustomerID
group by c.CompanyName
order by custOrders