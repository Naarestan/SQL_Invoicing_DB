SELECT
	c.customer_id,
    	c.first_name,
	c.last_name,
	SUM(oi.quantity * oi.unit_price) AS Total_Sales
FROM customers AS c
JOIN orders AS o
	USING(customer_id)
JOIN order_items AS oi
	USING(order_id)
WHERE
	state = 'VA'
GROUP BY
	c.customer_id,
    	c.first_name,
	c.last_name
HAVING
	Total_Sales > 100;

