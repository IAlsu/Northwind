select o.OrderID, o.ShippedDate, o.ShipVia
from Orders as o
where o.ShippedDate>='1998-05-06' AND o.ShipVia>=2
