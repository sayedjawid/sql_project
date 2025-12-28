SELECT 
    YEAR(OrderDate) AS OrderYear,
    COUNT(SalesOrderID) AS OrderCount,
    SUM(TotalDue) AS TotalSales
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY OrderYear