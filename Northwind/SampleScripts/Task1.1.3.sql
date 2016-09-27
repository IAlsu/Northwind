select o.OrderID as [Order Number], [Shipped Date] =
	case 
		when  o.ShippedDate is NULL then 'Not shipped'
	end 
from Orders as o
where o.ShippedDate>'1998-05-06' OR o.ShippedDate is NULL
