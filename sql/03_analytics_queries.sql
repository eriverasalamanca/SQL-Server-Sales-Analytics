/* =====================================================
   Proyecto: SQL Server Sales Analytics
   Descripción: Consultas analíticas en T-SQL
   ===================================================== */

USE SalesAnalyticsDB;
GO

--------------------------------------------------------
-- 1. Ventas totales por mes
--------------------------------------------------------
SELECT
    FORMAT(OrderDate, 'yyyy-MM') AS YearMonth,
    SUM(o.Quantity * p.Price) AS TotalSales
FROM dbo.Orders o
JOIN dbo.Products p ON o.ProductID = p.ProductID
GROUP BY FORMAT(OrderDate, 'yyyy-MM')
ORDER BY YearMonth;
GO

--------------------------------------------------------
-- 2. Top 5 productos por ingresos
--------------------------------------------------------
SELECT TOP 5
    p.ProductName,
    SUM(o.Quantity * p.Price) AS TotalRevenue
FROM dbo.Orders o
JOIN dbo.Products p ON o.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalRevenue DESC;
GO

--------------------------------------------------------
-- 3. Clientes con mayor gasto total
--------------------------------------------------------
SELECT
    c.CustomerName,
    SUM(o.Quantity * p.Price) AS TotalSpent
FROM dbo.Orders o
JOIN dbo.Customers c ON o.CustomerID = c.CustomerID
JOIN dbo.Products p ON o.ProductID = p.ProductID
GROUP BY c.CustomerName
ORDER BY TotalSpent DESC;
GO

--------------------------------------------------------
-- 4. Ventas por país y categoría
--------------------------------------------------------
SELECT
    c.Country,
    p.Category,
    SUM(o.Quantity * p.Price) AS TotalSales
FROM dbo.Orders o
JOIN dbo.Customers c ON o.CustomerID = c.CustomerID
JOIN dbo.Products p ON o.ProductID = p.ProductID
GROUP BY c.Country, p.Category
ORDER BY c.Country, TotalSales DESC;
GO

--------------------------------------------------------
-- 5. Ticket promedio por cliente
--------------------------------------------------------
WITH CustomerOrders AS (
    SELECT
        o.OrderID,
        o.CustomerID,
        SUM(o.Quantity * p.Price) AS OrderTotal
    FROM dbo.Orders o
    JOIN dbo.Products p ON o.ProductID = p.ProductID
    GROUP BY o.OrderID, o.CustomerID
)
SELECT
    c.CustomerName,
    AVG(co.OrderTotal) AS AvgTicket
FROM CustomerOrders co
JOIN dbo.Customers c ON co.CustomerID = c.CustomerID
GROUP BY c.CustomerName
ORDER BY AvgTicket DESC;
GO
