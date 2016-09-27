select c.CustomerID, c.Country
from Customers as c
where c.Country >'b' and c.Country <'h'
order by c.Country 