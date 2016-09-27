select sum(od.Quantity*od.UnitPrice * (1-od.Discount)) as Totals
from [Order Details] as od
