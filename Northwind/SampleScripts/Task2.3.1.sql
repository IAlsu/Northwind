select distinct e.FirstName + ' '+e.LastName as Sellers
from Region r
	inner join Territories t
	on r.RegionID=t.RegionID
	inner join EmployeeTerritories et
	on t.TerritoryID = et.TerritoryID
	inner join Employees e
	on et.EmployeeID = e.EmployeeID
where r.RegionDescription='Western'