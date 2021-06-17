use Northwind;

select ProductID, ProductName, UnitPrice from Products


select ProductID, ProductName, UnitPrice from Products
where UnitPrice like 0;


select ProductID, ProductName, UnitPrice from Products
where UnitPrice > 0;


select ProductName as Name, UnitPrice as ListPrice from Products

select ProductName as Name, UnitPrice  as ListPrice from Products
where ProductName like 'A%' or ProductName like 'S%'
order by ProductName


select ProductName as Name, UnitPrice  as ListPrice from Products
where ProductName like 'SPO%' and not ProductName like 'K%'
order by ProductName

select CategoryID from Products
where CategoryID is null
order by 1


SELECT ProductSubCategoryID
      , LEFT([Name],35) AS [Name]
      , Color, UnitPrice ListPrice 
FROM Products
WHERE not Color like  'Red'  Color AND 'Black' 
      OR ListPrice BETWEEN 1000 AND 2000 
      AND ProductSubCategoryID = 1
ORDER BY ProductID
