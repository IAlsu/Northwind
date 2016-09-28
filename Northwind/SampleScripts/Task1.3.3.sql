--Первый вариант
select c.CustomerID, c.Country
from Customers as c
where c.Country >'b' and c.Country <'h'
order by c.Country 

--Второй вариант
select c.CustomerID, c.Country
from Customers as c
where left(c.Country,1) in('b-g')
order by c.Country 