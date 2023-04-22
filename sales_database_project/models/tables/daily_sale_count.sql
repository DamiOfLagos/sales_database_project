{{
  config(
    materialized = "table",
    sort = 'sales_date'
  )
}}


SELECT
    sales_date,
    COUNT(order_number) AS daily_sales_count
FROM    
    sales_table
GROUP BY
    sales_date