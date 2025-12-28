SELECT pc.Name AS Category,
       SUM(sod.LineTotal) AS TotalSales
FROM Sales.SalesOrderDetail sod
-- Join Product to link order details to products
JOIN Production.Product p 
    ON sod.ProductID = p.ProductID
-- Join ProductSubcategory to link products to subcategories
JOIN Production.ProductSubcategory psc 
    ON p.ProductSubcategoryID = psc.ProductSubcategoryID
-- Join ProductCategory to get the category for each product
JOIN Production.ProductCategory pc 
    ON psc.ProductCategoryID = pc.ProductCategoryID
-- Group by category to sum sales per category
GROUP BY pc.Name
-- Order by total sales descending to show top-selling categories first
ORDER BY TotalSales DESC

