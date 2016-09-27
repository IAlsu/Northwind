select c.CompanyName, c.Country
from Customers as c
where c.Country not in ('USA', 'Canada')
order by c.CompanyName

