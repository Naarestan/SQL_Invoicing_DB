SELECT
	pm.name AS Payment_method,
    sum(p.amount) AS Total
FROM payments as p
JOIN payment_methods as pm
	ON p.payment_method = pm.payment_method_id
GROUP BY
	pm.name WITH ROLLUP	
