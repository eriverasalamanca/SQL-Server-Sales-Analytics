/* =====================================================
   Proyecto: SQL Server Sales Analytics
   Descripción: Carga de datos simulados
   ===================================================== */

USE SalesAnalyticsDB;
GO

-- Insertar Customers
INSERT INTO dbo.Customers (CustomerName, Country, SignupDate)
VALUES
('Juan Pérez', 'México', '2023-01-15'),
('Ana Gómez', 'México', '2023-02-10'),
('Carlos López', 'Colombia', '2023-03-05'),
('María Torres', 'Chile', '2023-04-01'),
('Luis Fernández', 'Argentina', '2023-05-20');
GO

-- Insertar Products
INSERT INTO dbo.Products (ProductName, Category, Price)
VALUES
('Laptop Pro 14', 'Electrónica', 18500.00),
('Mouse Inalámbrico', 'Accesorios', 450.00),
('Teclado Mecánico', 'Accesorios', 1200.00),
('Monitor 27"', 'Electrónica', 6200.00),
('Audífonos Bluetooth', 'Audio', 950.00);
GO

-- Insertar Orders
INSERT INTO dbo.Orders (CustomerID, ProductID, Quantity, OrderDate)
VALUES
(1, 1, 1, '2023-06-01'),
(1, 2, 2, '2023-06-03'),
(2, 3, 1, '2023-06-05'),
(3, 4, 1, '2023-06-10'),
(4, 5, 2, '2023-06-15'),
(2, 1, 1, '2023-07-01'),
(5, 2, 3, '2023-07-05'),
(3, 3, 2, '2023-07-10'),
(4, 4, 1, '2023-07-15'),
(5, 5, 1, '2023-07-20');
GO
