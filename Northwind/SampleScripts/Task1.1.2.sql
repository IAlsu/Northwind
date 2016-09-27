select o.OrderID, ShippedDate=
	case 
		when  o.ShippedDate is NULL then 'Not shipped'
	end 
from Orders as o
where o.ShippedDate is NULL
