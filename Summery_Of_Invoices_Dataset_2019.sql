---- We want to write a SQL query to create a table out of 'invoices' dataset
---- that shows 'Total Sales', 'Total Payment', and 'What we expect' for the year 2019,
---- and the first and second half of the year 2019 seperately


SELECT
	'First Half of 2019' AS Date_Range,
	SUM(invoice_total) AS Total_Sales,
    SUM(payment_total) AS Total_Payments,
    SUM(invoice_total - payment_total) AS What_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30'

UNION

SELECT
	'Second Half of 2019' AS Date_Range,
	SUM(invoice_total) AS Total_Sales,
    SUM(payment_total) AS Total_Payments,
    SUM(invoice_total - payment_total) AS What_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-31'

UNION

SELECT
	'Total' AS Date_Range,
	SUM(invoice_total) AS Total_Sales,
    SUM(payment_total) AS Total_Payments,
    SUM(invoice_total - payment_total) AS What_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-12-31'


