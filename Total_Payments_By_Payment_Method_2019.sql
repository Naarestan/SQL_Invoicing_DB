SELECT
	p.date AS Date,
    pm.name AS Payment_Method,
    sum(p.amount) AS Total_payments
FROM payments AS p
JOIN payment_methods AS pm
	ON p.payment_method = pm.payment_method_id
GROUP BY
	Date,
	Payment_Method
ORDER BY
	Date,
	Payment_Method
	
    