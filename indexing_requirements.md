# Indexing Requirements – SQL Server Sales Analytics

## Contexto
Durante la ejecución de consultas analíticas sobre la base de datos de ventas,
se identificó la necesidad de optimizar el rendimiento de lectura en
**SQL Server**, especialmente en operaciones de agregación y JOIN.

Este requerimiento complementa el alcance original del proyecto y se enfoca
exclusivamente en **optimización mediante índices**.

---

## Objetivo
Definir e implementar índices que mejoren el rendimiento de las consultas
analíticas sin modificar el modelo de datos existente.

---

## Alcance
- Creación de índices no clusterizados
- Optimización de consultas de solo lectura
- Enfoque en tablas de hechos y dimensiones

---

## Requerimientos
- Índices sobre claves de relación (CustomerID, ProductID)
- Índices para análisis temporal (OrderDate)
- Índices para agrupaciones frecuentes (Category, Country)
- Uso de columnas INCLUDE cuando aplique

---

## Criterios de aceptación
- Las consultas analíticas deben ejecutarse más rápido
- No se deben alterar resultados ni lógica de negocio
- Índices compatibles con SQL Server 2019+

---

## Rol
**Freelance BI Developer / Data Engineer**

---

## Estado
Requerimiento implementado
