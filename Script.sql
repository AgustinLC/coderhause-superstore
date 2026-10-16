-- Paso 1: Crear la tabla para poder importar en ella los datos
CREATE TABLE coderhause.iden_profesional.superstore (
    id INTEGER,
    order_id VARCHAR(30),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(20),
    customer_name TEXT,
    segment VARCHAR(50),
    country VARCHAR(100),
    city TEXT,
    state TEXT,
    postal_code VARCHAR(20),
    region VARCHAR(50),
    product_id VARCHAR(30),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name TEXT,
    sales NUMERIC(12,2),
    quantity INTEGER,
    discount NUMERIC(6,4),
    profit NUMERIC(12,2)
);

-- Paso 3: Ejecutar el análisis de rentabilidad
-- La siguiente consulta calcula los indicadores por región y subcategoría y ordena los resultados desde el margen más bajo hasta el más alto.

select region, sub_category, SUM(sales) as ventas_totales, SUM(profit) as ganancias, round(AVG(discount)*100) as descuento_promedio, round(100 * SUM(profit)/(SUM(sales))) as margen_beneficio
from coderhause.iden_profesional.superstore
group by region, sub_category
order by margen_beneficio asc
limit 10;