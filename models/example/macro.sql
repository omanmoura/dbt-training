SELECT
     o.order_id
    ,c.customer_id
    ,c.customer_name
    ,p.product_id
    ,p.product_name
    ,o.quantity
    ,{{ get_date_parts('order_date') }} AS date_extract
FROM 
    raw.orders AS o
JOIN {{ ref("stg_customers") }} AS c
    ON o.customer_id = c.customer_id
JOIN raw.products AS p
    ON  o.product_id = p.product_id