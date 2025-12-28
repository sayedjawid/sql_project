
USE AdventureWorks2025;
SELECT pc.Name AS Category, COUNT(DISTINCT p.ProductID) AS ProductCount
FROM Production.ProductCategory pc
-- Join ProductSubcategory to link categories to subcategories
JOIN Production.ProductSubcategory psc ON pc.ProductCategoryID = psc.ProductCategoryID
-- Join Product to link subcategories to products
JOIN Production.Product p ON psc.ProductSubcategoryID = p.ProductSubcategoryID
-- Group by category name to count products per category
GROUP BY pc.Name 
-- Order the result so that categories with most products appear first
ORDER BY ProductCount DESC

