select year(o.OrderDate) as Year , count(*) as Total
from Orders as o
group by year(o.OrderDate)

Select count(*) 
from Orders