select s.CompanyName
from Suppliers s
where s.SupplierID in
	(select p.SupplierID
		from Products p
		where p.UnitsInStock=0)