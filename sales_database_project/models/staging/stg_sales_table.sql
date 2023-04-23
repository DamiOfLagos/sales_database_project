SELECT 
    * ,
    (unit_price * order_qty) as revenue,
    (unit_price - unit_cost) * order_qty as profit
FROM 
    {{ source('source', 'sales_table') }}