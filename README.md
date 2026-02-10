# SQL Server Sales Analytics

## ¿Qué es este proyecto?
Este proyecto es una solución de **análisis de ventas** construida completamente en
**SQL Server**, pensada para un negocio pequeño–mediano que necesita entender
su desempeño comercial directamente desde la base de datos.

El proyecto muestra cómo diseñar un modelo relacional y cómo responder
preguntas reales de negocio usando **T-SQL**, sin depender de herramientas
de visualización o procesos externos.

---

## ¿Qué problema resuelve?
Permite responder preguntas como:
- ¿Cuánto vendemos por mes?
- ¿Cuáles son los productos que más ingresos generan?
- ¿Quiénes son nuestros mejores clientes?
- ¿Cómo se comportan las ventas por país y categoría?
- ¿Cuál es el ticket promedio por cliente?

---

## ¿Cómo está construido?
El proyecto utiliza un modelo relacional simple y claro:

- **Customers**: información de clientes
- **Products**: catálogo de productos
- **Orders**: transacciones de venta

Las relaciones permiten realizar análisis históricos y agregados
de forma eficiente usando SQL Server.

---

## Estructura del proyecto
sql-server-sales-analytics/
│<br>
├── sql/<br>
│ ├── 01_create_database_and_tables.sql<br>
│ ├── 02_insert_sample_data.sql<br>
│ └── 03_analytics_queries.sql<br>
│<br>
└── README.md<br>


---

## ¿Qué demuestra este proyecto?
- Buen diseño de bases de datos relacionales
- Uso correcto de claves primarias y foráneas
- Escritura de consultas analíticas en T-SQL
- Pensamiento orientado a negocio
- Código claro y documentado

---

## Tecnologías utilizadas
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

---

## Contexto profesional
Proyecto desarrollado como parte de mi experiencia **freelance** en
análisis de datos y BI, simulando un escenario real de cliente.

---

## ¿Cómo usarlo?
1. Ejecutar `01_create_database_and_tables.sql`
2. Ejecutar `02_insert_sample_data.sql`
3. Ejecutar `03_analytics_queries.sql` para explorar los resultados
