SELECT TOP 10
    p.Name AS Product,               -- Produktnamn
    SUM(sod.LineTotal) AS TotalSales -- Total försäljning per produkt
FROM Sales.SalesOrderDetail sod
-- Koppla orderdetaljer till produkter
JOIN Production.Product p 
    ON sod.ProductID = p.ProductID
GROUP BY p.Name                       -- Gruppera per produkt
ORDER BY TotalSales DESC              -- Sortera efter högsta försäljning