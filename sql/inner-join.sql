SELECT * FROM CUSTOMER
INNER JOIN INVOICE 
ON CUSTOMER.CustomerId = INVOICE.CustomerId
ORDER BY 1