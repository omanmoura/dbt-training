SELECT
    COUNT(*) AS num_orders_today
FROM
    {{ ref('stg_orders') }}
WHERE 1=1
    AND DATE(order_date) = CURRENT_DATE()
HAVING
    COUNT(*) > 0