SELECT 
    FORMAT(OrderDate, 'yyyy-MM') AS OrderMonth,  -- Format the order date as "YYYY-MM" for monthly grouping
    SUM(TotalDue) AS TotalSales                 -- Sum the TotalDue column to get total sales per month
FROM Sales.SalesOrderHeader
GROUP BY FORMAT(OrderDate, 'yyyy-MM')           -- Group by the formatted month
ORDER BY OrderMonth                             -- Order chronologically by month