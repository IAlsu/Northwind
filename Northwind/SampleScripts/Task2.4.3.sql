--Основной запрос
select c.CustomerID
from Customers c
where not exists 
	(select o.CustomerID
	from Orders o
	where o.CustomerID = c.CustomerID
	group by o.CustomerID)

	--ПРОВЕРКИ
--Количество Customers
Select count(*) from Customers
-- 91

--Количество Customers c заказами
select count(*) 
from 
	(select distinct o.CustomerID as c
	from Orders o) as f
--89
--Значит 2 человека без заказов
--Первый запрос выдал 2 человек

--Проверка 2 людей 
select * from Orders
where CustomerID ='FISSA'
--Его нет в таблице заказов, тоже самое и для второго

--1 человек не вошедший в результат основного запроса
select * from Orders
where CustomerID ='ANTON'
--У заказчика , не вошедшего в главный запрос 7 заказов
