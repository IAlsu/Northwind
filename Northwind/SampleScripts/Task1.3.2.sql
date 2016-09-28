--Первый вариант
select c.CustomerID, c.Country
from Customers as c
where c.Country between 'b' and 'h' AND NOT (c.Country between  'h' and 'h')
order by c.Country 

--Второй вариант
select c.CustomerID, c.Country
from Customers as c
where left(c.Country,1) between 'b' and 'g'
order by c.Country 