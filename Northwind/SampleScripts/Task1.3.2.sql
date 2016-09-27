select c.CustomerID, c.Country
from Customers as c
where c.Country between 'b' and 'h' AND NOT (c.Country between  'h' and 'h')
order by c.Country 