select c.CompanyName, c.Country
from Customers as c
where c.Country in ('USA', 'Canada')
order by c.CompanyName, c.Country,c.Region, c.City, c.Address
