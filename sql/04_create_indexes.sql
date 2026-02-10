/* =====================================================
   Proyecto: SQL Server Sales Analytics
   Descripción: Creación de índices para análisis
   ===================================================== */

USE SalesAnalyticsDB;
GO

--------------------------------------------------------
-- Índices en tabla Orders (tabla de hechos)
--------------------------------------------------------

-- Para JOINs por CustomerID
CREATE NONCLUSTERED INDEX IX_Orders_CustomerID
ON dbo.Orders (CustomerID);
GO

-- Para JOINs por ProductID
CREATE NONCLUSTERED INDEX IX_Orders_ProductID
ON dbo.Orders (ProductID);
GO

-- Para análisis por fecha (ventas por periodo)
CREATE NONCLUSTERED INDEX IX_Orders_OrderDate
ON dbo.Orders (OrderDate);
GO

--------------------------------------------------------
-- Índices en tabla Products (dimensión)
--------------------------------------------------------

-- Para análisis por categoría y cálculos de ingresos
CREATE NONCLUSTERED INDEX IX_Products_Category
ON dbo.Products (Category)
INCLUDE (Price);
GO

--------------------------------------------------------
-- Índices en tabla Customers (dimensión)
--------------------------------------------------------

-- Para análisis por país
CREATE NONCLUSTERED INDEX IX_Customers_Country
ON dbo.Customers (Country);
GO
