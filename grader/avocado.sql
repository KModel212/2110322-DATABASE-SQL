SELECT id, customer,order_date,delivery_date,delivery_date-order_date AS dayslate
FROM purchase_orders
WHERE delivery_date-order_date >5;