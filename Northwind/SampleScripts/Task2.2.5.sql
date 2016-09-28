Select count(c.CustomerID) as custCount, c.City
from Customers as c
group by c.City