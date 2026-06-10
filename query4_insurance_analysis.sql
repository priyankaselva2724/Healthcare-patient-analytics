-- QUERY 4: Compare all 5 insurance providers
-- DENSE_RANK gives consecutive ranks with no gaps

SELECT
    insurance_provider,
    COUNT(*)                        AS total_patients,
    ROUND(AVG(billing_amount), 2)   AS avg_billing,
    ROUND(MIN(billing_amount), 2)   AS min_billing,
    ROUND(MAX(billing_amount), 2)   AS max_billing,
    ROUND(SUM(billing_amount), 2)   AS total_revenue,
    DENSE_RANK() OVER
        (ORDER BY AVG(billing_amount) DESC) AS billing_rank
FROM healthcare_clean
GROUP BY insurance_provider
ORDER BY billing_rank;