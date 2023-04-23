{{
  config(
    materialized = "table"
  )
}}

-- this model shows the tota daily sale volume
SELECT
    sales_date,
    COUNT(order_number) AS daily_sales_count
FROM    
    {{ ref("stg_sales_table")}}
GROUP BY
    sales_date