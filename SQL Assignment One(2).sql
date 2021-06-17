use AdventureWorks2019
select p.ProductID, p.Name, p.Color, p.ListPrice from Production.Product p


select p.ProductID, p.Name, p.Color, p.ListPrice from Production.Product p
where p.ListPrice like 0.00;

select  p.ProductID, p.Name, p.Color, p.ListPrice from Production.Product p
where p.Color is NULL;

select p.ProductID, p.Name, p.Color, p.ListPrice from Production.Product p
where p.Color is not NULL;

select p.ProductID, p.Name, p.Color, p.ListPrice from Production.Product p
where p.Color is not NULL
and p.ListPrice > 0;


select p.Name, p.Color, p.ListPrice from Production.Product p
where p.Color is not NULL
and p.ListPrice > 0;


select p.Name, p.Color from Production.Product p
where p.Color like 'Black' or p.Color like 'Silver';

select p.Name, p.ProductID from Production.Product p
where p.ProductID between 400 and 500;


select p.Name, p.Color from Production.Product p
where p.Color like 'Black' or p.Color like 'Blue';


select * from Production.Product p
where p.Name like 'S%';


select p.Name, p.ListPrice from Production.Product p
where p.ListPrice like 0.00 or p.ListPrice like 53.99
order by p.Name, p.ListPrice


select p.Name, p.ListPrice from Production.Product p
where p.Name like 'A%' or p.Name like 'S%'
order by p.name;


select p.Name, p.ListPrice from Production.Product p
where p.Name like 'SPO%' and not p.Name like 'K%'
order by p.name;


select * from Production.Product p
order by p.Color desc


select p.ProductSubcategoryID, p.Color from Production.Product p
where p.ProductSubcategoryID is not null and p.Color is not null;


SELECT ProductSubCategoryID
      , LEFT([Name],35) AS [Name]
      , Color, ListPrice 
FROM Production.Product
WHERE Color NOT IN ('Red','Black') 
      OR ListPrice BETWEEN 1000 AND 2000 
      AND ProductSubCategoryID = 1
ORDER BY ProductID;


select p.ProductSubcategoryID, p.Name, p.Color, p.ListPrice from Production.Product p
where not p.ListPrice like 0.00
and p.ProductSubcategoryID is not null
and p.Color is not null
order by  p.ProductSubcategoryID desc, p.Color desc , p.ListPrice desc