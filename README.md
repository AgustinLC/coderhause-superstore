# Análisis de rentabilidad comercial
1. Descripción del proyecto
Este proyecto busca identificar qué combinaciones de región y subcategoría de productos presentan los márgenes de beneficio más bajos en el dataset Sample Superstore.
A través de consultas SQL sobre PostgreSQL, se agrupan las ventas por región y subcategoría para calcular las ventas totales, el beneficio total, el descuento promedio y el margen de beneficio.

2. Problema de negocio
Una empresa puede registrar un volumen considerable de ventas y, aun así, obtener beneficios reducidos o incluso pérdidas en determinados segmentos comerciales.
3. Stack tecnológico

PostgreSQL, DBeaver,SQL

4. Metodología de trabajo
El proyecto se organiza siguiendo las fases de CRISP-DM y un enfoque de trabajo incremental.
Comprensión del negocio: se definió la necesidad de identificar los segmentos con menor rentabilidad.
Comprensión de los datos: se revisaron las columnas disponibles y se identificaron las variables necesarias para el análisis.
Preparación de los datos: se definió la estructura de la tabla en PostgreSQL y se verificaron los datos importados, prestando atención a los tipos de datos y los valores nulos.
Modelado descriptivo: se desarrolló una consulta SQL que agrupa los registros por región y subcategoría y calcula los indicadores comerciales.
Evaluación: se ordenaron los resultados por margen de beneficio para localizar los segmentos con menor rentabilidad y se revisaron los valores obtenidos.
Comunicación de resultados: se interpretan los indicadores para presentar los hallazgos y proponer líneas de investigación para el negocio.
La primera rebanada del proyecto se concentra en la consulta SQL y la identificación de los segmentos menos rentables. 

5. Hallazgos clave
A pesar de la alta cantidad de ventas en mesas, los descuentos aplicados son tan altos que no permite ganancias positivas. El problema principal no reside en las regiones.

6. Cómo ejecutar el proyecto

-- Paso 1. Crear la tabla
Ejecutar la instrucción que se encuentra en el script.sql en el editor SQL. 

-- Paso 2. Importar los datos
Desde DBeaver, seleccionar la tabla superstore, elegir Import Data y seleccionar el archivo CSV llamado Sample-Superstore.
Durante la importación, verificar que las columnas de origen estén correctamente asignadas a las columnas de destino. En particular:
Row ID → id
Order ID → order_id
Order Date → order_date
Ship Date → ship_date
Customer ID → customer_id
Product ID → product_id
Sub-Category → sub_category
Quantity → quantity

-- Paso 3. Ejecutar la consulta del script.sql para realizar el análisis de rentabilidad


