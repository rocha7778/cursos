SELECT
InvoiceDate,
BillingAddress,
BillingCity,
total,
CASE
 WHEN total < 2.0 THEN 'BaseLine'
 WHEN total BETWEEN 2.0 AND 6.99 THEN 'LowPurchase'
 WHEN total BETWEEN 7.0 AND 15.0 THEN 'TargetPurchace'
 ELSE 'TopPerformance'
 END AS PurchaseType
FROM
Invoice
WHERE
total > 1.98 AND (BillingCity LIKE 'P%' OR BillingCity LIKE 'D%')
ORDER BY PurchaseType
