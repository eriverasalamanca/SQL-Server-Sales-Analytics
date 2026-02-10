/* =====================================================
   Proyecto: SQL Server Sales Analytics
   Descripción: Creación de base de datos y tablas
   ===================================================== */

-- Crear base de datos
IF NOT EXISTS (SELECT 1 FROM sys.databases WHERE name = 'SalesAnalyticsDB')
BEGIN
    CREATE DATABASE SalesAnalyticsDB;
END;
GO

USE SalesAnalyticsDB;
GO

-- Tabla Customers
IF OBJECT_ID('dbo.Customers', 'U') IS NOT NULL
    DROP TABLE dbo.Customers;
GO

CREATE TABLE dbo.Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Country VARCHAR(50) NOT NULL,
    SignupDate DATE NOT NULL
);
GO

-- Tabla Products
IF OBJECT_ID('dbo.Products', 'U') IS NOT NULL
    DROP TABLE dbo.Products;
GO

CREATE TABLE dbo.Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL
);
GO

-- Tabla Orders
IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL
    DROP TABLE dbo.Orders;
GO

CREATE TABLE dbo.Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,
    OrderDate DATE NOT NULL,
    CONSTRAINT FK_Orders_Customers FOREIGN KEY (CustomerID)
        REFERENCES dbo.Customers(CustomerID),
    CONSTRAINT FK_Orders_Products FOREIGN KEY (ProductID)
        REFERENCES dbo.Products(ProductID)
);
GO
